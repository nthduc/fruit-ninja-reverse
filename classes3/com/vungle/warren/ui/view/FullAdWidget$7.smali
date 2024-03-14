.class Lcom/vungle/warren/ui/view/FullAdWidget$7;
.super Ljava/lang/Object;
.source "FullAdWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/view/FullAdWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/view/FullAdWidget;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V
    .registers 2

    .line 399
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$7;->this$0:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 402
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$7;->this$0:Lcom/vungle/warren/ui/view/FullAdWidget;

    # getter for: Lcom/vungle/warren/ui/view/FullAdWidget;->onClickProxy:Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;
    invoke-static {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->access$1000(Lcom/vungle/warren/ui/view/FullAdWidget;)Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 403
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$7;->this$0:Lcom/vungle/warren/ui/view/FullAdWidget;

    # getter for: Lcom/vungle/warren/ui/view/FullAdWidget;->onClickProxy:Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;
    invoke-static {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->access$1000(Lcom/vungle/warren/ui/view/FullAdWidget;)Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$7;->this$0:Lcom/vungle/warren/ui/view/FullAdWidget;

    # invokes: Lcom/vungle/warren/ui/view/FullAdWidget;->matchView(Landroid/view/View;)I
    invoke-static {v1, p1}, Lcom/vungle/warren/ui/view/FullAdWidget;->access$1100(Lcom/vungle/warren/ui/view/FullAdWidget;Landroid/view/View;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;->onItemClicked(I)V

    :cond_17
    return-void
.end method
