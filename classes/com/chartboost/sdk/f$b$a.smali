.class Lcom/chartboost/sdk/f$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/f$b;->b(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/f$b;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/f$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/f$b$a;->a:Lcom/chartboost/sdk/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/f$b$a;->a:Lcom/chartboost/sdk/f$b;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method
