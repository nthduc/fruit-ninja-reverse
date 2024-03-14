.class public Lcom/vungle/warren/model/Advertisement$Checkpoint;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/Advertisement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checkpoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/vungle/warren/model/Advertisement$Checkpoint;",
        ">;"
    }
.end annotation


# instance fields
.field private percentage:B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "percentage"
    .end annotation
.end field

.field private urls:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "urls"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonArray;B)V
    .registers 6

    .line 1248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1249
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 1251
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 1252
    :goto_12
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 1253
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1256
    :cond_27
    iput-byte p2, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    return-void

    .line 1249
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty URLS!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "checkpoint"

    .line 1227
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1228
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    const-string v0, "urls"

    .line 1233
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1234
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 1235
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 1236
    :goto_30
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_63

    .line 1237
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_5a

    .line 1240
    :cond_4d
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_60

    .line 1238
    :cond_5a
    :goto_5a
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    :goto_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_63
    return-void

    .line 1244
    :cond_64
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Checkpoint missing reporting URL!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1230
    :cond_6c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Checkpoint missing percentage!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/vungle/warren/model/Advertisement$Checkpoint;)I
    .registers 3
    .param p1    # Lcom/vungle/warren/model/Advertisement$Checkpoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1269
    iget-byte v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    int-to-float v0, v0

    iget-byte p1, p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1219
    check-cast p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->compareTo(Lcom/vungle/warren/model/Advertisement$Checkpoint;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1275
    :cond_4
    instance-of v1, p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1277
    :cond_a
    check-cast p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    .line 1279
    iget-byte v1, p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    iget-byte v3, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    if-eq v1, v3, :cond_13

    return v2

    .line 1280
    :cond_13
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    array-length v1, v1

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    array-length v3, v3

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    const/4 v1, 0x0

    .line 1282
    :goto_1d
    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_32

    .line 1283
    iget-object v4, p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    return v2

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_32
    return v0
.end method

.method public getPercentage()B
    .registers 2

    .line 1264
    iget-byte v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    return v0
.end method

.method public getUrls()[Ljava/lang/String;
    .registers 2

    .line 1260
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1291
    iget-byte v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    mul-int/lit8 v0, v0, 0x1f

    .line 1292
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    array-length v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1293
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
