.class Lcom/adcolony/sdk/j$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/adcolony/sdk/x;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/x;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/adcolony/sdk/j$d;->a:Lcom/adcolony/sdk/x;

    .line 3
    iput-boolean p2, p0, Lcom/adcolony/sdk/j$d;->b:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lorg/json/JSONObject;
    .registers 3

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-ge p1, v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_8
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/j;->a(Z)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 5

    .line 5
    iget-boolean v0, p0, Lcom/adcolony/sdk/j$d;->b:Z

    if-eqz v0, :cond_10

    .line 6
    new-instance v0, Lcom/adcolony/sdk/x;

    const/4 v1, 0x1

    const-string v2, "Device.update_info"

    invoke-direct {v0, v2, v1, p1}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/x;->d()V

    goto :goto_19

    .line 8
    :cond_10
    iget-object v0, p0, Lcom/adcolony/sdk/j$d;->a:Lcom/adcolony/sdk/x;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/x;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->d()V

    :goto_19
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/j$d;->a([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/j$d;->a(Lorg/json/JSONObject;)V

    return-void
.end method
