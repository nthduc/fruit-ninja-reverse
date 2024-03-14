.class final synthetic Lcom/google/android/gms/internal/ads/zzcgu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfsc:Lcom/google/android/gms/internal/ads/zzdzc;

.field private final zzftx:Lcom/google/android/gms/internal/ads/zzdzc;

.field private final zzgcw:Lcom/google/android/gms/internal/ads/zzcgs;

.field private final zzgde:Lcom/google/android/gms/internal/ads/zzdzc;

.field private final zzgdf:Lcom/google/android/gms/internal/ads/zzdzc;

.field private final zzgdg:Lcom/google/android/gms/internal/ads/zzdzc;

.field private final zzgdh:Lorg/json/JSONObject;

.field private final zzgdi:Lcom/google/android/gms/internal/ads/zzdzc;

.field private final zzgdj:Lcom/google/android/gms/internal/ads/zzdzc;

.field private final zzgdk:Lcom/google/android/gms/internal/ads/zzdzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgs;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgcw:Lcom/google/android/gms/internal/ads/zzcgs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzftx:Lcom/google/android/gms/internal/ads/zzdzc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzfsc:Lcom/google/android/gms/internal/ads/zzdzc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgde:Lcom/google/android/gms/internal/ads/zzdzc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgdf:Lcom/google/android/gms/internal/ads/zzdzc;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgdg:Lcom/google/android/gms/internal/ads/zzdzc;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgdh:Lorg/json/JSONObject;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgdi:Lcom/google/android/gms/internal/ads/zzdzc;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgdj:Lcom/google/android/gms/internal/ads/zzdzc;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgdk:Lcom/google/android/gms/internal/ads/zzdzc;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgcw:Lcom/google/android/gms/internal/ads/zzcgs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzftx:Lcom/google/android/gms/internal/ads/zzdzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzfsc:Lcom/google/android/gms/internal/ads/zzdzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgde:Lcom/google/android/gms/internal/ads/zzdzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgdf:Lcom/google/android/gms/internal/ads/zzdzc;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgdg:Lcom/google/android/gms/internal/ads/zzdzc;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgdh:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgdi:Lcom/google/android/gms/internal/ads/zzdzc;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgdj:Lcom/google/android/gms/internal/ads/zzdzc;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgdk:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdzc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcei;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdzc;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->setImages(Ljava/util/List;)V

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdzc;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaee;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->zza(Lcom/google/android/gms/internal/ads/zzaee;)V

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdzc;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaee;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->zzb(Lcom/google/android/gms/internal/ads/zzaee;)V

    .line 6
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzdzc;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzadw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->zza(Lcom/google/android/gms/internal/ads/zzadw;)V

    .line 7
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzcgw;->zzj(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->zzh(Ljava/util/List;)V

    .line 9
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzcgw;->zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->zza(Lcom/google/android/gms/internal/ads/zzzk;)V

    .line 11
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzdzc;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v1, :cond_65

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->zzi(Lcom/google/android/gms/internal/ads/zzbgj;)V

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzcei;->zzac(Landroid/view/View;)V

    .line 15
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzs()Lcom/google/android/gms/internal/ads/zzbhd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->zzb(Lcom/google/android/gms/internal/ads/zzyo;)V

    .line 16
    :cond_65
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzdzc;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v1, :cond_70

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->zzj(Lcom/google/android/gms/internal/ads/zzbgj;)V

    .line 19
    :cond_70
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzdzc;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzchh;

    .line 20
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzchh;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_97

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8f

    goto :goto_7a

    .line 23
    :cond_8f
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzchh;->zzcn:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzchh;->zzgdv:Lcom/google/android/gms/internal/ads/zzadq;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzcei;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzadq;)V

    goto :goto_7a

    .line 21
    :cond_97
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzchh;->zzcn:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzchh;->zzgdu:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzcei;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    :cond_9f
    return-object v0
.end method
