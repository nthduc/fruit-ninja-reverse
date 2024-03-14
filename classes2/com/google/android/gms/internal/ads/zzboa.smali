.class public final Lcom/google/android/gms/internal/ads/zzboa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final view:Landroid/view/View;

.field private final zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

.field private final zzfpf:I

.field private final zzfpg:Z

.field private final zzfph:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbgj;IZZ)V
    .registers 6
    .param p2    # Lcom/google/android/gms/internal/ads/zzbgj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboa;->view:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzboa;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzboa;->zzfpf:I

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzboa;->zzfpg:Z

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzboa;->zzfph:Z

    return-void
.end method


# virtual methods
.method public final zzaho()I
    .registers 2

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzboa;->zzfpf:I

    return v0
.end method

.method public final zzahp()Z
    .registers 2

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzboa;->zzfpg:Z

    return v0
.end method

.method public final zzahq()Z
    .registers 2

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzboa;->zzfph:Z

    return v0
.end method
