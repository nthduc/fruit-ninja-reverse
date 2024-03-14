.class public Lcom/vungle/warren/model/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z
    .registers 4
    .param p0    # Lcom/google/gson/JsonElement;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    .line 11
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2b

    .line 15
    :cond_10
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p0

    if-nez p0, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    :goto_2b
    return v0
.end method
