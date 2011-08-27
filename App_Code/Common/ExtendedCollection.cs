#region XD World Recipe V 3
// FileName: ExtendedCollection.cs
// Author: Dexter Zafra
// Date Created: 2/5/2009
// Website: www.ex-designz.net
#endregion
using System;
using System.Collections;
using System.Collections.ObjectModel;
using System.Collections.Generic;

namespace EC.Common
{
    /// <summary>
    /// Extended generics collection which replaces the original.
    /// </summary>
    public class ExtendedCollection<T> : IList<T>, IEnumerable<T>, IEnumerator<T>
    {
        /******************************************************
        * To fully utlize this class, see "unittestpage.aspx".
        *******************************************************/

        //Instantiate object
        List<T> list = new List<T>();

        private List<T> _RemovedItemHistory;

        public ExtendedCollection()
        {
            _RemovedItemHistory = new List<T>();
        } 

        /// <summary>
        /// Adds an item to the ExtendedCollection&lt;T&gt;.
        /// </summary>
        public void Add(T item)
        {
           list.Add(item);
        }

        /// <summary>
        /// Adds the elements of the specified collection to the end of the ExtendedCollection&lt;T&gt;.
        /// </summary>
        public void AddRange(IEnumerable<T> range)
        {
            foreach (T t in range)
                list.Add(t);
        }

        public int BinarySearch(T item)
        {
            return list.BinarySearch(item);
        }

        public int Capacity
        {
            get { return list.Capacity; }
            set { list.Capacity = value; }
        }

        /// <summary>
        /// Removes all items from the ExtendedCollection&lt;T&gt;.
        /// </summary>
        public void Clear()
        {
            list.Clear();
        }

        /// <summary>
        /// Determines whether an element in the ExtendedCollection&lt;T&gt; constains a specific value.
        /// </summary>
        public bool Contains(T item)
        {
            return list.Contains(item);
        }

        /// <summary>
        /// Convert an element that meet the predicate condition..
        /// </summary>
        public void Convert<T>(List<T> list, Predicate<T> predicate, Converter<T, T> convert)
        {
            for (int i = 0; i < list.Count; i++)
            {
                T item = list[i];
                if (predicate(item))
                {
                    list[i] = convert(item);
                }
            }
        }

        /// <summary>
        /// Converts the elements in the current ExtendedCollection&lt;T&gt; to another type, 
        /// and return a list containing the converted elements.
        /// </summary>
        public List<O> ConvertAll<O>(Converter<T, O> converter)
        {
            List<O> output = new List<O>();
            foreach (T t in list)
                output.Add(converter(t));
            return output;
        }

        //Overload
        public IEnumerable<TOutput> ConvertAll<T, TOutput>(IEnumerable<T> collection, Converter<T, TOutput> converter)
        {
            List<TOutput> list = new List<TOutput>();
            foreach (T item in collection)
            {
                list.Add(converter(item));
            }
            return list;
        }

        /// <summary>
        /// Convert a list of nullable type into its equivalent non-nullable type.
        /// </summary>
        public IEnumerable<T> ConvertToNonNullable<T>(IEnumerable<Nullable<T>> target) where T : struct
        {
            foreach (Nullable<T> item in target)
            {
                yield return item.GetValueOrDefault();
            }
        }

        /// <summary>
        /// Returns the number of elements contained in the ExtendedCollection&lt;T&gt;.
        /// </summary>
        public int Count
        {
            get { return list.Count; }
        }

        public List<T> Copy()
        {
            List<T> copy = new List<T>();
            copy.AddRange(list);
            return copy;
        }

        /// <summary>
        /// Copies the elements of the ExtendedCollection&lt;T&gt; to System.Array, starting at particular System.Array index.
        /// </summary>
        public void CopyTo(T[] array, int arrayIndex)
        {
            list.CopyTo(array, arrayIndex);
        }

        /// <summary>
        /// Determines whether the ExtendedCollection&lt;T&gt; contains elements that 
        /// match the condition defined by the specified predicate.
        /// </summary>
        public bool Exists(Predicate<T> match)
        {
            return list.Find(match) != null;
        }

        /// <summary>
        /// Returns a new enumerator containing only those 
        /// elements which return true from 'condition'.
        /// </summary>
        /// <typeparam name="T">The source type</typeparam>
        /// <param name="list">the list to filter</param>
        /// <param name="condition">the 'keep in' condition</param>
        /// <returns>the items for which condition(item) 
        /// is true</returns>
        public IEnumerable<T> Filter<T>(IEnumerable<T> list, Predicate<T> condition)
        {
            foreach (T item in list)
            {
                if (condition(item))
                {
                    yield return item;
                }
            }
        }

        /// <summary>
        /// Searches for an elements that matches the condition defined by the 
        /// specified predicate, and returns the first occurences within the entire ExtendedCollection&lt;T&gt;.
        /// </summary>
        public T Find(Predicate<T> match)
        {
            return list.Find(match);
        }

        /// <summary>
        /// Retrieves all the elements that match the conditioned defined by the specified predicate.
        /// </summary>
        public ExtendedCollection<T> FindAll(Predicate<T> match)
        {
            ExtendedCollection<T> items = new ExtendedCollection<T>();
            items.AddRange(list.FindAll(match));
            return items;
        }

        /// <summary>
        /// Searches for an elements that matches the condition defined by the 
        /// specified predicate, and returns the zero-based index of the first occurence within the range of elements
        /// in the ExtendedCollection&lt;T&gt; that starts at the specified index and constains the specified number of lements.
        /// </summary>
        public int FindIndex(Predicate<T> match)
        {
            return list.FindIndex(match);
        }

        //Overload
        public int FindIndex(int startIndex, Predicate<T> match)
        {
            return list.FindIndex(startIndex, match);
        }

        //Overload
        public int FindIndex(int startIndex, int count, Predicate<T> match)
        {
            return list.FindIndex(startIndex, count, match);
        }

        /// <summary>
        /// Searches for an elements that matches the condition defined by the 
        /// specified predicate, and returns the last occurences within the entire ExtendedCollection&lt;T&gt;.
        /// </summary>
        public T FindLast(Predicate<T> match)
        {
            return list.FindLast(match);
        }

        /// <summary>
        /// Searches for an elements that matches the condition defined by the 
        /// specified predicate, and returns the zero-based index of the last occurence within the range of elements
        /// in the ExtendedCollection&lt;T&gt; that starts at the specified number of lements and ends at the specified index.
        /// </summary>
        public int FindLastIndex(Predicate<T> match)
        {
            return list.FindLastIndex(match);
        }

        //Overload
        public int FindLastIndex(int startIndex, Predicate<T> match)
        {
            return list.FindLastIndex(startIndex, match);
        }

        //Overload
        public int FindLastIndex(int startIndex, int count, Predicate<T> match)
        {
            return list.FindLastIndex(startIndex, count, match);
        }

        /// <summary>
        /// Searches for the specified item in the zero-based index of the last occurence in the ExtendedCollection&lt;T&gt;.
        /// </summary>
        public int FindLastIndexOf(T item)
        {
            return list.IndexOf(item) - 1;
        }

        /// <summary>
        /// Find an element that match the conditioned defined by the specified predicate after sort.
        /// </summary>
        public T FindAfterSort(IComparer<T> comparer, Predicate<T> match)
        {
            T[] elements = new T[list.Count];
            list.CopyTo(elements, 0);
            Array.Sort(elements, comparer);
            return Array.Find(elements, match);
        }

        /// <summary>
        /// Find all elements that match the conditioned defined by the specified predicate after sort.
        /// </summary>
        public List<T> FindAllAfterSort(IComparer<T> comparer, Predicate<T> match)
        {
            T[] elements = new T[list.Count];
            list.CopyTo(elements, 0);
            Array.Sort(elements, comparer);
            return new List<T>(Array.FindAll(elements, match));
        }

        /// <summary>
        /// Performs the specified action on each element in the ExtendedCollection&lt;T&gt;. 
        /// </summary>
        public void ForEach(Action<T> action)
        {
            foreach (T t in list)
                action(t);
        }

        /// <summary>
        /// Returns the value of the first index in the ExtendedCollection&lt;T&gt;.
        /// </summary>
        public T GetFirstIndexValue
        {
            get { return list[0]; }
            set { list[0] = value; }
        }

        /// <summary>
        /// Returns the last index in the ExtendedCollection&lt;T&gt;.
        /// </summary>
        public int GetLastIndex
        {
            get { return list.Count - 1; }
        }

        /// <summary>
        /// Returns the last index value/item in the ExtendedCollection&lt;T&gt;.
        /// </summary>
        public T GetLastIndexValue
        {
            get { return list[list.Count - 1]; }
            set { list[list.Count - 1] = value; }
        }

        /// <summary>
        /// Returns the value/item of the specified index in the ExtendedCollection&lt;T&gt;.
        /// </summary>
        public T GetValue(int index)
        {
            return list[index];
        }

        /// <summary>
        /// Creates a shallow copy of a range of elements in the source ExtendedCollection&lt;T&gt;.
        /// </summary>
        public List<T> GetRange(int index, int count)
        {
            return list.GetRange(index, count);
        }

        #region Get Int and Double Min,Max and Sum

        /// <summary>
        /// Returns the Max value of a List&lt;int&gt;.
        /// </summary>
        public int GetMaxInt(List<int> listInt)
        {
            int max = int.MinValue;

            foreach (int i in listInt)
                if (i > max)
                    max = i;

            return max;
        }

        /// <summary>
        /// Returns the Max value of a int[].
        /// </summary>
        public int GetMaxInt(int[] arrInt)
        {
            int max = int.MinValue;

            foreach (int i in arrInt)
                if (i > max)
                    max = i;

            return max;
        }

        /// <summary>
        /// Returns the Min value of a List&lt;int&gt;.
        /// </summary>
        public int GetMinInt(List<int> listInt)
        {
            int min = int.MaxValue;

            foreach (int i in listInt)
                if (i < min)
                    min = i;

            return min;
        }

        /// <summary>
        /// Returns the Min value of an int[].
        /// </summary>
        public int GetMinInt(int[] arrInt)
        {
            int min = int.MaxValue;

            foreach (int i in arrInt)
                if (i < min)
                    min = i;

            return min;
        }

        /// <summary>
        /// Returns the Max value of a List&lt;double&gt;.
        /// </summary>
        public double GetMaxDouble(List<double> listDouble)
        {
            double max = double.MinValue;

            foreach (double d in listDouble)
                if (d > max)
                    max = d;

            return max;
        }

        /// <summary>
        /// Returns the Max value of a double[].
        /// </summary>
        public double GetMaxDouble(double[] arrDouble)
        {
            double max = double.MinValue;

            foreach (double d in arrDouble)
                if (d > max)
                    max = d;

            return max;
        }

        /// <summary>
        /// Returns the Min value of a List&lt;double&gt;.
        /// </summary>
        public double GetMinDouble(List<double> listDouble)
        {
            double min = double.MaxValue;

            foreach (double d in listDouble)
                if (d < min)
                    min = d;

            return min;
        }

        /// <summary>
        /// Returns the Min value of a double[].
        /// </summary>
        public double GetMinDouble(double[] arrDouble)
        {
            double min = double.MaxValue;

            foreach (double d in arrDouble)
                if (d < min)
                    min = d;
 
            return min;
        }

        /// <summary>
        /// Returns the Sum value of a List&lt;int&gt;.
        /// </summary>
        public int GetSumInt(List<int> listInt)
        {
            if (listInt.Count == 0)
                return 0;

            int intTotal = 0;

            foreach (int value in listInt)
                intTotal += value;

            return intTotal;
        }

        /// <summary>
        /// Returns the Sum value of an int[].
        /// </summary>
        public int GetSumInt(int[] arrInt)
        {
            if (arrInt.Length == 0)
                return 0;

            int intTotal = 0;

            foreach (int value in arrInt)
                intTotal += value;

            return intTotal;
        }

        /// <summary>
        /// Returns the Sum value of a List&lt;double&gt;.
        /// </summary>
        public double GetSumDouble(List<double> listDouble)
        {
            if (listDouble.Count == 0)
                return 0.0;

            double doubleTotal = 0.0;

            foreach (double value in listDouble)
                doubleTotal += value;

            return doubleTotal;
        }

        /// <summary>
        /// Returns the Sum value of a double[].
        /// </summary>
        public double GetSumDouble(double[] arrDouble)
        {
            if (arrDouble.Length == 0)
                return 0.0;

            double doubleTotal = 0.0;

            foreach (double value in arrDouble)
                doubleTotal += value;

            return doubleTotal;
        }
        #endregion

        /// <summary>
        /// Searches for the specified object and returns zer-based index of the first occurences within
        /// the range of the elements in the ExtendedCollection&lt;T&gt; that starts at the specified index
        /// and contains the specified number of elements.
        /// </summary>
        public int IndexOf(T item)
        {
            return list.IndexOf(item);
        }

        /// <summary>
        /// Insert an element into the ExtendedCollection&lt;T&gt;.
        /// </summary>
        public void Insert(int index, T item)
        {
            list.Insert(index, item);
        }

        /// <summary>
        /// Insert the elements of a collection into the ExtendedCollection&lt;T&gt; at the specified index.
        /// </summary>
        public void InsertRange(int index, IEnumerable<T> collection)
        {
            list.InsertRange(index, collection);
        }

        /// <summary>
        /// Specify if the collection is read-only.
        /// </summary>
        public bool IsReadOnly
        {
            get { return false; }
        }

        /// <summary>
        /// Removes the first occurence of a specified object from the ExtendedCollection&lt;T&gt;.
        /// </summary>
        public bool Remove(T item)
        {
            return list.Remove(item);
        }

        /// <summary>
        /// Removes all the elements that matches the conditions defined by the specified predicate.
        /// </summary>
        public int RemoveAll(Predicate<T> match)
        {
            return list.RemoveAll(match);
        }

        //Overload
        public void RemoveAll<T>(List<T> list, Predicate<T> condition)
        {
            int i = 0;
            while (i < list.Count)
            {
                if (condition(list[i]))
                    list.RemoveAt(i);
                else
                    i++;
            }
        }

        /// <summary>
        /// Removes the element at the specified index of the ExtendedCollection&lt;T&gt;.
        /// </summary>
        public void RemoveAt(int index)
        {
            list.RemoveAt(index);
            T item = this[index];
            _RemovedItemHistory.Insert(0, item);
        }

        /// <summary>
        /// Returns all the elements that had been removed in the ExtendedCollection&lt;T&gt;.
        /// </summary>
        public List<T> RemovedItemHistory
        {
            get { return this._RemovedItemHistory; }
        }

        /// <summary>
        /// Returns the count of elements that had been removed in the ExtendedCollection&lt;T&gt;.
        /// </summary>
        public int RemovedItemCounter
        {
            get { return RemovedItemHistory.Count; }
        }

        /// <summary>
        /// Removes range of elements from the ExtendedCollection&lt;T&gt;.
        /// </summary>
        public void RemoveRange(int index, int count)
        {
            list.RemoveRange(index, count);
        }

        /// <summary>
        /// Removes an item in the ExtendedCollection&lt;T&gt; base on the item/value specified.
        /// </summary>
        public void RemoveByItem(T item)
        {
            if (list.Contains(item))
            {
                list.RemoveAt(list.IndexOf(item));
            }
            else
            {
                throw new InvalidOperationException("Item not found in the collection.");
            }
        }

        /// <summary>
        /// Replace an item specified by the index in the ExtendedCollection&lt;T&gt;.
        /// </summary>
        public void ReplaceWithByIndex(int index, T item)
        {
            if (index < list.Count - 1)
            {
                list[index] = item;
            }
            else
            {
                throw new IndexOutOfRangeException();
            }
        }

        /// <summary>
        /// Replace an item specified by the value/item in the ExtendedCollection&lt;T&gt;.
        /// Example: ReplaceWith("Person Name", "Person Name 2");
        /// </summary>
        public void ReplaceWithByItem(T item, T replacewith)
        {
            if (list.Contains(item))
            {
                int index = list.IndexOf(item);
                list[index] = replacewith;
            }
            else
            {
                throw new InvalidOperationException("Item not found in the collection.");
            }
        }

        public void Reverse()
        {
            list.Reverse();
        }

        public void Reverse(int index, int count)
        {
            list.Reverse(index, count);
        }

        /// <summary>
        /// Sorts the elements in the entire ExtendedCollection&lt;T&gt; in an Ascending order.
        /// </summary>
        public void SortAscending()
        {
            list.Sort();
        }

        /// <summary>
        /// Sorts the elements in the entire ExtendedCollection&lt;T&gt; in Descending order.
        /// </summary>
        public void SortDescending()
        {
            list.Sort();
            list.Reverse();
        }

        //overload
        public List<T> Sort(Comparison<T> comparison)
        {
            List<T> copy = Copy();
            copy.Sort(comparison);
            return copy;
        }

        //overload
        public List<T> Sort(IComparer<T> comparer)
        {
            List<T> copy = Copy();
            copy.Sort(comparer);
            return copy;
        }

        //overload
        public List<T> Sort(int index, int count, IComparer<T> comparer)
        {
            List<T> copy = Copy();
            copy.Sort(index, count, comparer);
            return copy;
        }

        /// <summary>
        /// Returns an item at the specified index in the ExtendedCollection&lt;T&gt;.
        /// Example: MyString[1]
        /// </summary>
        public T this[int index]
        {
            get
            {
                if ((uint)index >= (uint)Count)
                    return default(T);
                return list[index];
            }
            set
            {
                list[index] = value;
            }
        }

        /// <summary>
        /// Copies the elements of the ExtendedCollection&lt;T&gt; to a new array.
        /// </summary>
        public T[] ToArray()
        {
            return list.ToArray();
        }

        /// <summary>
        /// Copies the elements an array to a new List&lt;T&gt;.
        /// </summary>
        public List<T> ToList()
        {
            List<T> output = new List<T>();
            output.AddRange(list);
            return output;
        }

        /// <summary>
        /// Sets the capacity to the actual number of elements in the ExtendedCollection&lt;T&gt;, if that number if less than a threshold value.
        /// </summary>
        public void TrimExcess()
        {
            list.TrimExcess();
        }

        /// <summary>
        /// Determines whether every element in the ExtendedCollection&lt;T&gt; 
        /// matches the condition defined by the specified predicate.
        /// </summary>
        public bool TrueForAll(Predicate<T> match)
        {
            foreach (T t in list)
                if (!match(t))
                    return false;

            return true;
        }

        //Facilitate enumeration.
        IEnumerator<T> IEnumerable<T>.GetEnumerator()
        {
            foreach (T t in list)
                yield return t;
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return list.GetEnumerator();
        }

        T IEnumerator<T>.Current
        {
            get { return list.GetEnumerator().Current; }
        }

        object IEnumerator.Current
        {
            get { return list.GetEnumerator().Current; }
        }

        bool IEnumerator.MoveNext()
        {
            return list.GetEnumerator().MoveNext();
        }

        void IEnumerator.Reset()
        {
            throw new Exception("The method or operation is not implemented.");
        }

        public void Dispose()
        {
            Dispose();
            GC.SuppressFinalize(this);
        }

    }
}
