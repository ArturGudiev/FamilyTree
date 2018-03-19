using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Company.FamilyTree
{
    partial class Person
    {
        bool GetDecoratorControlValue()
        {
            return this.Children.Count > 0;
        }
    }
}
