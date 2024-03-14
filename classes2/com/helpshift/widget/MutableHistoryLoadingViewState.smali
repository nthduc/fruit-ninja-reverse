.class public Lcom/helpshift/widget/MutableHistoryLoadingViewState;
.super Lcom/helpshift/widget/HistoryLoadingViewState;
.source "MutableHistoryLoadingViewState.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/helpshift/widget/HistoryLoadingViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public setState(Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;)V
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/helpshift/widget/MutableHistoryLoadingViewState;->state:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    if-eq v0, p1, :cond_9

    .line 13
    iput-object p1, p0, Lcom/helpshift/widget/MutableHistoryLoadingViewState;->state:Lcom/helpshift/conversation/activeconversation/message/HistoryLoadingState;

    .line 14
    invoke-virtual {p0, p0}, Lcom/helpshift/widget/MutableHistoryLoadingViewState;->notifyChange(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method
