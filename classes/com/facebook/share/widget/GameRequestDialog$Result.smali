.class public final Lcom/facebook/share/widget/GameRequestDialog$Result;
.super Ljava/lang/Object;
.source "GameRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/GameRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field requestId:Ljava/lang/String;

.field to:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .registers 7

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "request"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->requestId:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->to:Ljava/util/List;

    :goto_12
    const/4 v0, 0x1

    .line 62
    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->to:Ljava/util/List;

    .line 63
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "to[%d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 64
    iget-object v1, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->to:Ljava/util/List;

    new-array v0, v0, [Ljava/lang/Object;

    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 66
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_48
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/facebook/share/widget/GameRequestDialog$1;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/GameRequestDialog$Result;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestRecipients()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->to:Ljava/util/List;

    return-object v0
.end method
