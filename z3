using System;

namespace starboy3
{
    public class ObjectCounter
    {
        private static int count = 0;

        public ObjectCounter()
        {
            count++;
        }

        public static void PrintObjectCount()
        {
            Console.WriteLine($"Количество созданных объектов: {count}");
        }
    }
}

using System;

namespace starboy3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            ObjectCounter.PrintObjectCount();

            var obj1 = new ObjectCounter();
            var obj2 = new ObjectCounter();
            ObjectCounter.PrintObjectCount();

            var obj3 = new ObjectCounter();
            ObjectCounter.PrintObjectCount();
        }
    }
}
