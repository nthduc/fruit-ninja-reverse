.class public final Lcom/google/android/gms/common/images/zab;
.super Lcom/google/android/gms/common/images/zaa;
.source "com.google.android.gms:play-services-base@@17.2.1"


# instance fields
.field private zani:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .registers 4

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/zaa;-><init>(Landroid/net/Uri;I)V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zab;->zani:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/zaa;-><init>(Landroid/net/Uri;I)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zab;->zani:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 10
    instance-of v0, p1, Lcom/google/android/gms/common/images/zab;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    .line 14
    :cond_a
    check-cast p1, Lcom/google/android/gms/common/images/zab;

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/common/images/zab;->zani:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 16
    iget-object p1, p1, Lcom/google/android/gms/common/images/zab;->zani:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_27

    if-eqz v2, :cond_27

    .line 18
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    return v0

    :cond_27
    return v1
.end method

.method public final hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final zaa(Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 10

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/common/images/zab;->zani:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_68

    const/4 v1, 0x0

    if-nez p3, :cond_11

    if-nez p4, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    if-eqz v2, :cond_27

    .line 24
    instance-of v3, v0, Lcom/google/android/gms/internal/base/zai;

    if-eqz v3, :cond_27

    .line 25
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/base/zai;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/base/zai;->zacf()I

    move-result v3

    .line 27
    iget v4, p0, Lcom/google/android/gms/common/images/zab;->zand:I

    if-eqz v4, :cond_27

    iget v4, p0, Lcom/google/android/gms/common/images/zab;->zand:I

    if-eq v3, v4, :cond_68

    .line 28
    :cond_27
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/images/zaa;->zaa(ZZ)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_46

    .line 31
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 34
    instance-of v4, v3, Lcom/google/android/gms/internal/base/zaf;

    if-eqz v4, :cond_40

    .line 35
    check-cast v3, Lcom/google/android/gms/internal/base/zaf;

    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/internal/base/zaf;->zacd()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_40

    :cond_3f
    move-object v3, p3

    .line 39
    :cond_40
    :goto_40
    new-instance v4, Lcom/google/android/gms/internal/base/zaf;

    invoke-direct {v4, v3, p1}, Lcom/google/android/gms/internal/base/zaf;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p1, v4

    .line 41
    :cond_46
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    instance-of v3, v0, Lcom/google/android/gms/internal/base/zai;

    if-eqz v3, :cond_5f

    .line 43
    check-cast v0, Lcom/google/android/gms/internal/base/zai;

    if-eqz p4, :cond_55

    .line 44
    iget-object p3, p0, Lcom/google/android/gms/common/images/zab;->zanb:Lcom/google/android/gms/common/images/zac;

    iget-object p3, p3, Lcom/google/android/gms/common/images/zac;->uri:Landroid/net/Uri;

    .line 45
    :cond_55
    invoke-static {p3}, Lcom/google/android/gms/internal/base/zai;->zaa(Landroid/net/Uri;)V

    if-eqz v2, :cond_5c

    .line 46
    iget v1, p0, Lcom/google/android/gms/common/images/zab;->zand:I

    .line 47
    :cond_5c
    invoke-static {v1}, Lcom/google/android/gms/internal/base/zai;->zai(I)V

    :cond_5f
    if-eqz p2, :cond_68

    .line 49
    check-cast p1, Lcom/google/android/gms/internal/base/zaf;

    const/16 p2, 0xfa

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/base/zaf;->startTransition(I)V

    :cond_68
    return-void
.end method
