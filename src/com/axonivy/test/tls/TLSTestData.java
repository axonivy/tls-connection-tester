package com.axonivy.test.tls;

import ch.ivyteam.ivy.scripting.objects.List;

public final class TLSTestData
{
  private String testGroup;
  private List<String> entryList;
  private boolean success = true;

  public TLSTestData(String group)
  {
    this.testGroup = group;
    this.entryList = new List<>();
  }

  public String getGroup()
  {
    return testGroup;
  }

  public void setGroup(String group)
  {
    this.testGroup = group;
  }
  
  public void addEntry(String newEntry)
  {
    this.entryList.add(newEntry);
  }
  
  public void addEntry(String newEntry, Object... args)
  {
    this.entryList.add(String.format(newEntry, args));
  }

  public List<String> getEntryList()
  {
    return entryList;
  }

  public void setEntryList(List<String> newEntryList)
  {
    this.entryList = newEntryList;
  }

  public boolean isSuccess() {
	return success;
}

public void setSuccess(boolean success) {
	this.success = success;
}

@Override
  public String toString()
  {
    StringBuilder builder = new StringBuilder();
    builder.append("Entry for group " + this.testGroup + ":\n");
    for (String entry : this.entryList)
    {
      builder.append("  - " + entry);
    }
    return builder.toString();
  }
}
