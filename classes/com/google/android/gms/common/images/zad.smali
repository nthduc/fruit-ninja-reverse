.class public final Lcom/google/android/gms/common/images/zad;
.super Lcom/google/android/gms/common/images/zaa;
.source "com.google.android.gms:play-services-base@@17.2.1"


# instance fields
.field private zanl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/zaa;-><init>(Landroid/net/Uri;I)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zad;->zanl:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 6
    instance-of v0, p1, Lcom/google/android/gms/common/images/zad;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    .line 10
    :cond_a
    check-cast p1, Lcom/google/android/gms/common/images/zad;

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/common/images/zad;->zanl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    .line 12
    iget-object v3, p1, Lcom/google/android/gms/common/images/zad;->zanl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-eqz v3, :cond_31

    if-eqz v2, :cond_31

    .line 14
    invoke-static {v3, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object p1, p1, Lcom/google/android/gms/common/images/zad;->zanb:Lcom/google/android/gms/common/images/zac;

    iget-object v2, p0, Lcom/google/android/gms/common/images/zad;->zanb:Lcom/google/android/gms/common/images/zac;

    .line 15
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    return v0

    :cond_31
    return v1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/images/zad;->zanb:Lcom/google/android/gms/common/images/zac;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final zaa(Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 5

    if-nez p3, :cond_13

    .line 18
    iget-object p2, p0, Lcom/google/android/gms/common/images/zad;->zanl:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-eqz p2, :cond_13

    .line 20
    iget-object p3, p0, Lcom/google/android/gms/common/images/zad;->zanb:Lcom/google/android/gms/common/images/zac;

    iget-object p3, p3, Lcom/google/android/gms/common/images/zac;->uri:Landroid/net/Uri;

    invoke-interface {p2, p3, p1, p4}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    :cond_13
    return-void
.end method
