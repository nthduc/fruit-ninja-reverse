.class public Lcom/helpshift/conversation/activeconversation/message/UIViewState;
.super Ljava/lang/Object;
.source "UIViewState.java"

# interfaces
.implements Lcom/helpshift/util/HSCloneable;


# instance fields
.field private isFooterVisible:Z

.field private isRoundedBackground:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0, v0}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/helpshift/conversation/activeconversation/message/UIViewState;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isFooterVisible:Z

    iput-boolean v0, p0, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isFooterVisible:Z

    .line 23
    iget-boolean p1, p1, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isRoundedBackground:Z

    iput-boolean p1, p0, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isRoundedBackground:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isFooterVisible:Z

    .line 18
    iput-boolean p2, p0, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isRoundedBackground:Z

    return-void
.end method


# virtual methods
.method public deepClone()Lcom/helpshift/conversation/activeconversation/message/UIViewState;
    .registers 2

    .line 52
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/UIViewState;

    invoke-direct {v0, p0}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;-><init>(Lcom/helpshift/conversation/activeconversation/message/UIViewState;)V

    return-object v0
.end method

.method public bridge synthetic deepClone()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->deepClone()Lcom/helpshift/conversation/activeconversation/message/UIViewState;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 44
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/UIViewState;

    if-eqz p1, :cond_16

    .line 45
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isFooterVisible()Z

    move-result v0

    iget-boolean v1, p0, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isFooterVisible:Z

    if-ne v0, v1, :cond_16

    .line 46
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isRoundedBackground()Z

    move-result p1

    iget-boolean v0, p0, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isRoundedBackground:Z

    if-ne p1, v0, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public isFooterVisible()Z
    .registers 2

    .line 27
    iget-boolean v0, p0, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isFooterVisible:Z

    return v0
.end method

.method public isRoundedBackground()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isRoundedBackground:Z

    return v0
.end method

.method public updateViewState(Lcom/helpshift/conversation/activeconversation/message/UIViewState;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 38
    :cond_3
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isFooterVisible:Z

    iput-boolean v0, p0, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isFooterVisible:Z

    .line 39
    iget-boolean p1, p1, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isRoundedBackground:Z

    iput-boolean p1, p0, Lcom/helpshift/conversation/activeconversation/message/UIViewState;->isRoundedBackground:Z

    return-void
.end method
