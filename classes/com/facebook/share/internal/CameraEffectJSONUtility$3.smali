.class final Lcom/facebook/share/internal/CameraEffectJSONUtility$3;
.super Ljava/lang/Object;
.source "CameraEffectJSONUtility.java"

# interfaces
.implements Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/CameraEffectJSONUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setOnArgumentsBuilder(Lcom/facebook/share/model/CameraEffectArguments$Builder;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 67
    check-cast p3, Lorg/json/JSONArray;

    .line 68
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 69
    :goto_9
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 70
    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 71
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1e

    .line 72
    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 74
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected type in an array: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_39
    invoke-virtual {p1, p2, v0}, Lcom/facebook/share/model/CameraEffectArguments$Builder;->putArgument(Ljava/lang/String;[Ljava/lang/String;)Lcom/facebook/share/model/CameraEffectArguments$Builder;

    return-void
.end method

.method public setOnJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 83
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "JSONArray\'s are not supported in bundles."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
