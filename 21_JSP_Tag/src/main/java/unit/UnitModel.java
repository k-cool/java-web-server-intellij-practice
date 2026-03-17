package unit;

import javax.servlet.http.HttpServletRequest;

public class UnitModel {
    public static void calcUnit(HttpServletRequest request) {
        double num = Double.parseDouble(request.getParameter("num"));
        String mode = request.getParameter("mode");

        String fromUnit = "";
        String toUnit = "";
        String className = "";

        double result = 0;

        switch (mode) {
            case "cmToInch":
                result = 0.3937008 * num;
                fromUnit = "cm";
                toUnit = "inch";
                break;

            case "squareToPyeoung":
                result = num / 3.3058;
                fromUnit = "㎡";
                toUnit = "평";
                className = "pyeoung";
                break;

            case "celToFah":
                result = (num * 1.8) + 32;
                fromUnit = "℃";
                toUnit = "℉";
                className = "fah";
                break;

            case "kmToMile":
                result = num * 0.621371;
                fromUnit = "km/h";
                toUnit = "mi/h";
                className = "mile";
                break;

            default:
                break;
        }

        String fromStr = String.format("%.1f %s", num, fromUnit);
        String toStr = String.format("%.1f %s", result, toUnit);

        ResultBean rb = new ResultBean(fromStr, toStr, result, className);

        System.out.println(className);

        request.setAttribute("rb", rb);
        System.out.println(rb);
    }
}
