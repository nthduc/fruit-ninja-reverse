.class public final Lcom/google/android/gms/internal/ads/zzbnj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final view:Landroid/view/View;

.field private final zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

.field private final zzfpe:Lcom/google/android/gms/internal/ads/zzdnu;

.field private final zzfpf:I

.field private final zzfpg:Z

.field private final zzfph:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzdnu;IZZ)V
    .registers 7
    .param p2    # Lcom/google/android/gms/internal/ads/zzbgj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnj;->view:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnj;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbnj;->zzfpe:Lcom/google/android/gms/internal/ads/zzdnu;

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbnj;->zzfpf:I

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbnj;->zzfpg:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzbnj;->zzfph:Z

    return-void
.end method


# virtual methods
.method public final zzahl()Lcom/google/android/gms/internal/ads/zzbgj;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnj;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    return-object v0
.end method

.method public final zzahm()Landroid/view/View;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnj;->view:Landroid/view/View;

    return-object v0
.end method

.method public final zzahn()Lcom/google/android/gms/internal/ads/zzdnu;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnj;->zzfpe:Lcom/google/android/gms/internal/ads/zzdnu;

    return-object v0
.end method

.method public final zzaho()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbnj;->zzfpf:I

    return v0
.end method

.method public final zzahp()Z
    .registers 2

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbnj;->zzfpg:Z

    return v0
.end method

.method public final zzahq()Z
    .registers 2

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbnj;->zzfph:Z

    return v0
.end method
