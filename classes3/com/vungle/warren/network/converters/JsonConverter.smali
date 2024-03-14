.class public Lcom/vungle/warren/network/converters/JsonConverter;
.super Ljava/lang/Object;
.source "JsonConverter.java"

# interfaces
.implements Lcom/vungle/warren/network/converters/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/network/converters/Converter<",
        "Lokhttp3/ResponseBody;",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/network/converters/JsonConverter;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lokhttp3/ResponseBody;)Lcom/google/gson/JsonObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/vungle/warren/network/converters/JsonConverter;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_12

    .line 39
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-object v0

    :catchall_12
    move-exception v0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    throw v0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/network/converters/JsonConverter;->convert(Lokhttp3/ResponseBody;)Lcom/google/gson/JsonObject;

    move-result-object p1

    return-object p1
.end method
