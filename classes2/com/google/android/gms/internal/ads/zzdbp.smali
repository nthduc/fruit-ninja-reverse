.class public final Lcom/google/android/gms/internal/ads/zzdbp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgu<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

.field private final zzgva:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzvn;",
            "Ljava/util/List<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzgva:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final synthetic zzs(Ljava/lang/Object;)V
    .registers 6

    .line 6
    check-cast p1, Landroid/os/Bundle;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacy;->zzdbw:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzvr:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayu;->zzau(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzvn;->width:I

    const-string v3, "width"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzvn;->height:I

    const-string v3, "height"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "size"

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzgva:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5a

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzgva:Ljava/util/List;

    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/Parcelable;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    const-string v2, "parents"

    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_5a
    const-string v1, "view_hierarchy"

    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5f
    return-void
.end method
