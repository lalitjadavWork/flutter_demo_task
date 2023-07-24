# Flutter_Demo_Task

**Problem**
- We don't need 100 widgets on memory or data, because it can reduce performance
- count variable is defined in local widget, it is getting reset when we call setState()

**Solution**
- We can define listview length to 100 and use our list with data
- For our use case we have used map to define value for each item, user may change every item every time or may not
- map is defined in list widget, so we can manage state even after listItem refreshed, for that we have used callback method.. we can also use global variable

**Video for Solution**

https://www.loom.com/share/e8e09955e7c84df0b2ea4d27aa763967?sid=25c708b6-53c7-4f48-ab60-a28b9d4f68df
