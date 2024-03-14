.class public final Lcom/google/android/gms/internal/ads/zzbqd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbuz;
.implements Lcom/google/android/gms/internal/ads/zzbvs;


# instance fields
.field private final zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

.field private zzfrd:Lcom/google/android/gms/dynamic/IObjectWrapper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzfre:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzbbx;)V
    .registers 5
    .param p2    # Lcom/google/android/gms/internal/ads/zzbgj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    return-void
.end method

.method private final declared-synchronized zzait()V
    .registers 11

    monitor-enter p0

    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzdtm:Z
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_81

    if-nez v0, :cond_9

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_81

    if-nez v0, :cond_f

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlg()Lcom/google/android/gms/internal/ads/zzaqv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzvr:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqv;->zzp(Landroid/content/Context;)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_81

    if-nez v0, :cond_1d

    .line 21
    monitor-exit p0

    return-void

    .line 22
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbbx;->zzeel:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbbx;->zzeem:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhec:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;->getVideoEventsOwner()Ljava/lang/String;

    move-result-object v9

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlg()Lcom/google/android/gms/internal/ads/zzaqv;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 26
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, ""

    const-string v8, "javascript"

    .line 27
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzaqv;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzfrd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzfrd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v1, :cond_7f

    if-eqz v0, :cond_7f

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlg()Lcom/google/android/gms/internal/ads/zzaqv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzfrd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzaqv;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzfrd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzap(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlg()Lcom/google/android/gms/internal/ads/zzaqv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzfrd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqv;->zzab(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzfre:Z
    :try_end_7f
    .catchall {:try_start_1d .. :try_end_7f} :catchall_81

    .line 34
    :cond_7f
    monitor-exit p0

    return-void

    :catchall_81
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized onAdImpression()V
    .registers 4

    monitor-enter p0

    .line 11
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzfre:Z

    if-nez v0, :cond_8

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqd;->zzait()V

    .line 13
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzdtm:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzfrd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_22

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    const-string v1, "onSdkImpression"

    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 15
    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAdLoaded()V
    .registers 2

    monitor-enter p0

    .line 7
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbqd;->zzfre:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_7

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqd;->zzait()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    .line 10
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
