.class public Lcom/helpshift/widget/MutableReplyFieldViewState;
.super Lcom/helpshift/widget/ReplyFieldViewState;
.source "MutableReplyFieldViewState.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/helpshift/widget/ReplyFieldViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public clearReplyText()V
    .registers 2

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/helpshift/widget/MutableReplyFieldViewState;->replyText:Ljava/lang/String;

    .line 21
    invoke-virtual {p0, p0}, Lcom/helpshift/widget/MutableReplyFieldViewState;->notifyChange(Ljava/lang/Object;)V

    return-void
.end method

.method public setReplyText(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 25
    iget-object v0, p0, Lcom/helpshift/widget/MutableReplyFieldViewState;->replyText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 26
    iput-object p1, p0, Lcom/helpshift/widget/MutableReplyFieldViewState;->replyText:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p0}, Lcom/helpshift/widget/MutableReplyFieldViewState;->notifyChange(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method
