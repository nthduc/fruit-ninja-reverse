.class Lcom/moat/analytics/mobile/vng/z$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field final b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/moat/analytics/mobile/vng/z$b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/z$b;->a:Landroid/view/View;

    if-eqz p2, :cond_14

    iget-object v0, p2, Lcom/moat/analytics/mobile/vng/z$b;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object p2, p2, Lcom/moat/analytics/mobile/vng/z$b;->b:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v0, p2}, Lcom/moat/analytics/mobile/vng/z;->a(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_18

    :cond_14
    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/z;->b(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    :goto_18
    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/z$b;->b:Landroid/graphics/Rect;

    return-void
.end method
