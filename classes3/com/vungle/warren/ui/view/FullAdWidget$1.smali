.class Lcom/vungle/warren/ui/view/FullAdWidget$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FullAdWidget.java"


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

    .line 183
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$1;->this$0:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 187
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$1;->this$0:Lcom/vungle/warren/ui/view/FullAdWidget;

    # getter for: Lcom/vungle/warren/ui/view/FullAdWidget;->proxyClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/vungle/warren/ui/view/FullAdWidget;->access$100(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$1;->this$0:Lcom/vungle/warren/ui/view/FullAdWidget;

    # getter for: Lcom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->access$000(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
