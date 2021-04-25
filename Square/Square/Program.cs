using System;

namespace Square
{
    class Squares
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Введите радиус круга:");
            double radius = Convert.ToDouble(Console.ReadLine());

            Console.WriteLine($"Площадь круга: {SquareOfCircle(radius)}");

            Console.WriteLine("Введите сторону A:");
            byte lineA = Convert.ToByte(Console.ReadLine());

            Console.WriteLine("Введите сторону B:");
            byte lineB = Convert.ToByte(Console.ReadLine());

            Console.WriteLine("Введите сторону C:");
            byte lineC = Convert.ToByte(Console.ReadLine());

            Console.WriteLine($"Площадь треугольника: {SquareOfTriangle(lineA, lineB, lineC)}");

            string isRightTriangle = RightTriangle(lineA, lineB, lineC) == true ? "Да." : "Нет.";
            Console.WriteLine("Прямоугольный ли треугольник? " + isRightTriangle);

            Console.ReadKey();
        }

        public static double SquareOfCircle(double radius)
        {
            return Math.PI * Math.Pow(radius, 2);
        }

        public static double SquareOfTriangle(byte lineA, byte lineB, byte lineC)
        {
            double halfOfPerimeter = (lineA + lineB + lineC) / 2;
            double squareOfTriangle = Math.Sqrt(halfOfPerimeter * (halfOfPerimeter - lineA) * (halfOfPerimeter - lineB) * (halfOfPerimeter - lineC));
            return squareOfTriangle;
        }

        public static bool RightTriangle(byte lineA, byte lineB, byte lineC)
        {
            if (Math.Pow(lineA, 2) + Math.Pow(lineB, 2) == Math.Pow(lineC, 2)) 
            {
                return true;
            }
            else if (Math.Pow(lineA, 2) + Math.Pow(lineC, 2) == Math.Pow(lineB, 2))
            {
                return true;
            }
            else if (Math.Pow(lineC, 2) + Math.Pow(lineB, 2) == Math.Pow(lineA, 2))
            {
                return true;
            }

            return false;
        }
    }
}
