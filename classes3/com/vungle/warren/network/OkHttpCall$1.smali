.class Lcom/vungle/warren/network/OkHttpCall$1;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/network/OkHttpCall;->enqueue(Lcom/vungle/warren/network/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/network/OkHttpCall;

.field final synthetic val$callback:Lcom/vungle/warren/network/Callback;


# direct methods
.method constructor <init>(Lcom/vungle/warren/network/OkHttpCall;Lcom/vungle/warren/network/Callback;)V
    .registers 3

    .line 59
    iput-object p1, p0, Lcom/vungle/warren/network/OkHttpCall$1;->this$0:Lcom/vungle/warren/network/OkHttpCall;

    iput-object p2, p0, Lcom/vungle/warren/network/OkHttpCall$1;->val$callback:Lcom/vungle/warren/network/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callFailure(Ljava/lang/Throwable;)V
    .registers 4

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall$1;->val$callback:Lcom/vungle/warren/network/Callback;

    iget-object v1, p0, Lcom/vungle/warren/network/OkHttpCall$1;->this$0:Lcom/vungle/warren/network/OkHttpCall;

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/network/Callback;->onFailure(Lcom/vungle/warren/network/Call;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception p1

    .line 86
    # getter for: Lcom/vungle/warren/network/OkHttpCall;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/network/OkHttpCall;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error on executing callback"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 3
    .param p1    # Lokhttp3/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 79
    invoke-direct {p0, p2}, Lcom/vungle/warren/network/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 4
    .param p1    # Lokhttp3/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    :try_start_0
    iget-object p1, p0, Lcom/vungle/warren/network/OkHttpCall$1;->this$0:Lcom/vungle/warren/network/OkHttpCall;

    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall$1;->this$0:Lcom/vungle/warren/network/OkHttpCall;

    # getter for: Lcom/vungle/warren/network/OkHttpCall;->converter:Lcom/vungle/warren/network/converters/Converter;
    invoke-static {v0}, Lcom/vungle/warren/network/OkHttpCall;->access$000(Lcom/vungle/warren/network/OkHttpCall;)Lcom/vungle/warren/network/converters/Converter;

    move-result-object v0

    # invokes: Lcom/vungle/warren/network/OkHttpCall;->parseResponse(Lokhttp3/Response;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Response;
    invoke-static {p1, p2, v0}, Lcom/vungle/warren/network/OkHttpCall;->access$100(Lcom/vungle/warren/network/OkHttpCall;Lokhttp3/Response;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Response;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_1f

    .line 71
    :try_start_c
    iget-object p2, p0, Lcom/vungle/warren/network/OkHttpCall$1;->val$callback:Lcom/vungle/warren/network/Callback;

    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall$1;->this$0:Lcom/vungle/warren/network/OkHttpCall;

    invoke-interface {p2, v0, p1}, Lcom/vungle/warren/network/Callback;->onResponse(Lcom/vungle/warren/network/Call;Lcom/vungle/warren/network/Response;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_1e

    :catch_14
    move-exception p1

    .line 73
    # getter for: Lcom/vungle/warren/network/OkHttpCall;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/network/OkHttpCall;->access$200()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Error on excuting callback"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    return-void

    :catch_1f
    move-exception p1

    .line 66
    invoke-direct {p0, p1}, Lcom/vungle/warren/network/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    return-void
.end method
