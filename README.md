# azureupdates2hugo-action
 This action grabs the current RSS-Feed from [Azure Service Updates](https://azurecomcdn.azureedge.net/en-us/updates/feed/) and publishs the raw xml and a converted json into the hugo data-Folder.

 ## Usage
```yaml
- uses: robinkonrad/azureupdates2hugo-action@v1
```
By default two files are produced during execution of the action
- XML-Raw Output into /data/azureupdatesfeed.xml
- XML2JSON Output into /data/azureupdatesfeed.json

## Parameters
You can change the output filenames, if you specifiy the following parameters
```yaml
- usses: robinkonrad/azureupdates2hugo-action@v1
  with:
    filename: CustomJsonFile.json
    # Final path:     ./data/CustomJsonFile.json
    rawfilename: CustomRawFile.xml
    # Final path raw: ./data/CustomRawFile.json
``` 
