.class Lcom/adcolony/sdk/AdColonyAdView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/AdColonyAdView;->b()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/adcolony/sdk/AdColonyAdView;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/AdColonyAdView;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyAdView$b;->b:Lcom/adcolony/sdk/AdColonyAdView;

    iput-object p2, p0, Lcom/adcolony/sdk/AdColonyAdView$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/adcolony/sdk/AdColonyAdView$b;->a:Landroid/content/Context;

    instance-of v0, p1, Lcom/adcolony/sdk/AdColonyAdViewActivity;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Lcom/adcolony/sdk/AdColonyAdViewActivity;

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyAdViewActivity;->b()V

    :cond_b
    return-void
.end method
