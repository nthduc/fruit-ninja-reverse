.class public final Lcom/chartboost/sdk/Libraries/j;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v0, "WeakActivity.WeakActivity"

    .line 2
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/chartboost/sdk/Libraries/j;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Z
    .registers 3

    if-eqz p1, :cond_c

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Lcom/chartboost/sdk/Libraries/j;->a:I

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/Libraries/j;->a:I

    return v0
.end method
