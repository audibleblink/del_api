# Delegate API

An API that mirrors delegate information from the Associated Press API. Users must provide their own access key.


### Endpoint
```
GET $BASE_URL/reports
```

__Returns:__

```js
{
  delState: {}  // Information about delegates by state
  delSum:   {}  // Information about delegate sums by nominee
  delSuper: {}  // Information about counts with and without super-delegates by nominee
}
```
