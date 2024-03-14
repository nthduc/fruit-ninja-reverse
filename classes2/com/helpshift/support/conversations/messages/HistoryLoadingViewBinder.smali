.class public Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;
.super Ljava/lang/Object;
.source "HistoryLoadingViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;,
        Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$HistoryLoadingClickListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private historyLoadingClickListener:Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$HistoryLoadingClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$300(Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;)Landroid/content/Context;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;)Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$HistoryLoadingClickListener;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;->historyLoadingClickListener:Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$HistoryLoadingClickListener;

    return-object p0
.end method


# virtual methods
.method public bind(Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;)V
    .registers 8

    .line 33
    sget-object v0, Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$HistoryLoadingState:[I

    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1a

    const/4 v2, 0x2

    if-eq p2, v2, :cond_18

    const/4 v2, 0x3

    if-eq p2, v2, :cond_15

    const/4 p2, 0x0

    :goto_13
    const/4 v2, 0x0

    goto :goto_1d

    :cond_15
    const/4 p2, 0x0

    const/4 v2, 0x1

    goto :goto_1d

    :cond_18
    const/4 p2, 0x1

    goto :goto_13

    :cond_1a
    const/4 p2, 0x0

    const/4 v0, 0x0

    goto :goto_13

    .line 45
    :goto_1d
    # getter for: Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;->layoutView:Landroid/view/View;
    invoke-static {p1}, Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;->access$000(Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_29

    :cond_27
    const/16 v0, 0x8

    :goto_29
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    # getter for: Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;->loadingStateView:Landroid/view/View;
    invoke-static {p1}, Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;->access$100(Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_34

    const/4 p2, 0x0

    goto :goto_36

    :cond_34
    const/16 p2, 0x8

    :goto_36
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    # getter for: Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;->errorStateView:Landroid/view/View;
    invoke-static {p1}, Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;->access$200(Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;)Landroid/view/View;

    move-result-object p1

    if-eqz v2, :cond_40

    goto :goto_42

    :cond_40
    const/16 v1, 0x8

    :goto_42
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;
    .registers 5

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/helpshift/R$layout;->hs__history_loading_view_layout:I

    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 24
    new-instance v0, Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$ViewHolder;-><init>(Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;Landroid/view/View;)V

    return-object v0
.end method

.method public setHistoryLoadingClickListener(Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$HistoryLoadingClickListener;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder;->historyLoadingClickListener:Lcom/helpshift/support/conversations/messages/HistoryLoadingViewBinder$HistoryLoadingClickListener;

    return-void
.end method
