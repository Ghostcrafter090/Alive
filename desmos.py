import importlib
import ast
import re
import modules.pytools as pytools
import traceback

functions = {
    "A * B": "A\cdot B",
    "A / B": "\\frac{A}{B}",
    "A + B": "A+B",
    "A - B": "A-B",
    "A ** B": "A^{B}",
    "math.floor(A)": "\operatorname{floor}\left(A\right)"
}

def parseFunction(test):
    # test = "o=-3\left(\left(a\cdot e^{\left(-\frac{\left(w-f\right)^{2}}{c}\right)}\right)+\left(h\cdot e^{\left(-\frac{\left(w-f\right)^{2}}{g}\right)}\right)\right)"
    # test = "m=\left(\frac{\frac{\operatorname{abs}\left(z_{1}\right)}{2}+15}{15}^{1}\left(a\cdot e^{\left(-0.65\frac{\left(w-b\right)^{2}}{c}\right)}\right)+\left(h\cdot e^{\left(-0.65\frac{\left(w-b\right)^{2}}{g}\right)}\right)\right)+j+k+\left(l_{2}+l_{3}+l_{4}+l_{5}+l_{6}+l_{7}+l_{8}+l_{9}+l_{10}+l_{11}+l_{12}\right)+o+t+z-25"
    # test = "t=-2\cdot\left(\left(a\cdot e^{\left(-\frac{\left(w-r\right)^{2}}{c}\right)}\right)+\left(h\cdot e^{\left(-\frac{\left(w-r\right)^{2}}{g}\right)}\right)\right)"
    # test = "j\ =\ -16\ \cdot\ \sin\left(\left(\frac{p}{1180295.8}\right)\cdot\left(-\left(w-\left(\frac{1180295.8}{2}\right)\right)-\left(u\cdot\left(365.25\ \cdot\ 24\ \cdot\ 60\ \cdot60\right)\right)\right)\right)"
    # test = "l_{2}=13e^{-\frac{\left(w-1080000\right)^{2}}{g}}"
    # test = "l_{5}=13e^{-\frac{\left(\left(w-q\right)-8856000\right)^{2}}{g}}"
    side1 = test.split("=")[0]
    side2 = test.split("=")[1]
    
    def parseSection(side):
        side = side.replace("(", "\", [\"")
        side = side.replace(")", "\"], \"")
        side = side.replace("{", "\", (\"")
        side = side.replace("}", "\",), \"")
        side = side.replace("^", "\", \" ** \", \"")
        side = side.replace("+", "\", \" + \", \"")
        side = side.replace("-", "\", \" - \", \"")
        side = side.replace("\x0c", "\\f")
        
        side = side.replace("\r", "\\r").replace("\\frac", "\\divide")
        side = side.replace("\\cdot", "\", \" * \", \"")
        side = side.replace("\\left", "").replace("\\right", "")
        
        side = "[\"" + side + "\"]"
        
        side = side.replace("\"\", ", "")
        side = side.replace(", \"\"]", "]")
        side = side.replace(", \"\",)", ")")
        side = side.replace(",,", ",")
        side = side.replace(", , ", ", ")
                
        out = ast.literal_eval(side)
        
        def process(outf):
            function = ""
            i = 0
            while i < len(outf):
                print(outf[i], i)
                if str(outf[i])[0] == "[":
                    function = function + "(" + process(outf[i]) + ")"
                    i = i + 1
                elif str(outf[i])[0] == "(":
                    function = function + "(" + process(outf[i]) + ")"
                    i = i + 1
                elif outf[i] == "\divide":
                    function = function + "((" + process(outf[i + 1]) + ") / (" + process(outf[i + 2]) + "))"
                    i = i + 3
                elif (outf[i] != " - ") and (outf[i] != " + ") and (outf[i] != " * ") and (outf[i] != " ** "):
                    try:
                        if outf[i][1] == "_":
                            function = function + outf[i] + outf[i + 1][0] + " "
                            i = i + 2
                        else:
                            k = False
                            for j in re.findall(r'[0-9.]+|\D+', outf[i]):
                                if j != "":
                                    if j == "\divide":
                                        function = function + "((" + process(outf[i + 1]) + ") / (" + process(outf[i + 2]) + "))"
                                        k = True
                                    else:
                                        function = function + j + " * "
                            i = i + 1
                            if k:
                                i = i + 2
                    except:
                        k = False
                        for j in re.findall(r'[0-9.]+|\D+', outf[i]):
                            if j != "":
                                if j == "\divide":
                                    function = function + "((" + process(outf[i + 1]) + ") / (" + process(outf[i + 2]) + "))"
                                    k = True
                                else:
                                    function = function + j + " * "
                        i = i + 1
                        if k:
                            i = i + 2
                else:
                    function = function + outf[i]
                    i = i + 1
            return function.replace("  ", " ").replace(" * divide", " * ").replace("divide * ", " * ").replace(" * * ", " * ").replace(" *  * ", " * ").replace(" * )", ")").replace("( * ", "(").replace(" * + ", " + ").replace(" * - ", " - ").replace(" - * ", " - ").replace(" + * ", " + ").replace(" * ** ", " ** ").replace(" *  ** ", " ** ").replace(" * \\log * (", " * math.log(").replace("\\log * (", "math.log(").replace("\\sin * (", "math.sin(").replace("\\cos * (", "math.cos(").replace("\\arctan * (", "math.atan(").replace("\\tan * (", "math.tan(").replace("\\", "").replace(" * * ", " * ").replace("operatorname * (abs)(", "math.fabs(").replace("operatorname * (abs) * (", "math.fabs(").replace("operatorname * (floor)(", "math.floor(").replace("operatorname * (floor) * (", "math.floor(")
        
        return process(out)
    
    outMain = (parseSection(side1) + " = " + parseSection(side2)).replace(" *  = ", " = ").replace(" * = ", " = ").replace("  ", " ").replace(" = * ", " = ").replace(" =  * ", " = ").replace(" * * ", " * ").replace(")(", ") * (")
    
    if outMain[-3:] == " * ":
        outMain = outMain[:-3]
    
    return outMain

def parseFile(path):
    string = ""
    for n in pytools.IO.getFile(path).split("\n"):
        print(n)
        string = string + "\n" + parseFunction(n)
        
    return string

def reload(self):
    return importlib.reload(self)
        