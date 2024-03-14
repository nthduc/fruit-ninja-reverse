.class public Lcom/google/firebase/storage/network/connection/HttpURLConnectionFactoryImpl;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.1.1"

# interfaces
.implements Lcom/google/firebase/storage/network/connection/HttpURLConnectionFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method
