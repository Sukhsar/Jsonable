public abstract class Jsonable {
    private System.Type apexType;

    protected Jsonable(System.Type apexType) {
        this.apexType = apexType;
    }

    public String serialize() {
        return System.JSON.serialize(this, true); // true - to remove null fields
    } 

    public Object deserialize(String json) {
        if(Verify.isNotNull(this.apexType)) {
            return System.JSON.deserializeStrict(json, this.apexType);
        }
        return System.JSON.deserializeUntyped(json);
    } 
}
