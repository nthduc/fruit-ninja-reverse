.class public final Lcom/google/android/gms/internal/ads/zzbnv;
.super Lcom/google/android/gms/internal/ads/zzbqo;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final view:Landroid/view/View;

.field private final zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzfpe:Lcom/google/android/gms/internal/ads/zzdnu;

.field private final zzfpf:I

.field private final zzfpg:Z

.field private final zzfph:Z

.field private zzfpn:Lcom/google/android/gms/internal/ads/zzsm;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzfpo:Lcom/google/android/gms/internal/ads/zzbnn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbqn;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzdnu;IZZLcom/google/android/gms/internal/ads/zzbnn;)V
    .registers 9
    .param p3    # Lcom/google/android/gms/internal/ads/zzbgj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbqo;-><init>(Lcom/google/android/gms/internal/ads/zzbqn;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnv;->view:Landroid/view/View;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzfpe:Lcom/google/android/gms/internal/ads/zzdnu;

    .line 5
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzfpf:I

    .line 6
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzfpg:Z

    .line 7
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzfph:Z

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzfpo:Lcom/google/android/gms/internal/ads/zzbnn;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzsc;)V
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_7

    .line 21
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Lcom/google/android/gms/internal/ads/zzsc;)V

    :cond_7
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsm;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzfpn:Lcom/google/android/gms/internal/ads/zzsm;

    return-void
.end method

.method public final zzabc()Z
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_18

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbhv;->zzabc()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public final zzaho()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzfpf:I

    return v0
.end method

.method public final zzahp()Z
    .registers 2

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzfpg:Z

    return v0
.end method

.method public final zzahq()Z
    .registers 2

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzfph:Z

    return v0
.end method

.method public final zzahw()Lcom/google/android/gms/internal/ads/zzdnu;
    .registers 3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdq:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzfpe:Lcom/google/android/gms/internal/ads/zzdnu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoq;->zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdnu;)Lcom/google/android/gms/internal/ads/zzdnu;

    move-result-object v0

    return-object v0
.end method

.method public final zzahx()Landroid/view/View;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnv;->view:Landroid/view/View;

    return-object v0
.end method

.method public final zzahy()Z
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzaby()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final zzahz()Lcom/google/android/gms/internal/ads/zzsm;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzfpn:Lcom/google/android/gms/internal/ads/zzsm;

    return-object v0
.end method

.method public final zzfd(J)V
    .registers 4

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnv;->zzfpo:Lcom/google/android/gms/internal/ads/zzbnn;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbnn;->zzfd(J)V

    return-void
.end method
