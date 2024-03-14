.class Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener$1;
.super Ljava/lang/Object;
.source "HSRecyclerViewScrollListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener;->computeAndNotifyCallback(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener;


# direct methods
.method constructor <init>(Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener$1;->this$0:Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener$1;->this$0:Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener;

    # getter for: Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener;->callback:Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener$RecyclerViewScrollCallback;
    invoke-static {v0}, Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener;->access$000(Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener;)Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener$RecyclerViewScrollCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/support/conversations/HSRecyclerViewScrollListener$RecyclerViewScrollCallback;->onScrolledToTop()V

    return-void
.end method
