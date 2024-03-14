.class final synthetic Lcom/google/android/gms/internal/ads/zzbgq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzcyt:Landroid/content/Context;

.field private final zzdhk:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzenn:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzeno:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzenp:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/ads/internal/zzb;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgq;->zzcyt:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgq;->zzdhk:Lcom/google/android/gms/internal/ads/zzeg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbgq;->zzenn:Lcom/google/android/gms/internal/ads/zzbbx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbgq;->zzeno:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbgq;->zzenp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgq;->zzcyt:Landroid/content/Context;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbgq;->zzdhk:Lcom/google/android/gms/internal/ads/zzeg;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbgq;->zzenn:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzbgq;->zzeno:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzbgq;->zzenp:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/internal/ads/zzbgr;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhy;->zzacy()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzts;->zzna()Lcom/google/android/gms/internal/ads/zzts;

    move-result-object v12

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    .line 5
    invoke-static/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzbgr;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhy;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzacb;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbch;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbch;

    move-result-object v2

    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbgs;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzbgs;-><init>(Lcom/google/android/gms/internal/ads/zzbch;)V

    .line 9
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzbhv;->zza(Lcom/google/android/gms/internal/ads/zzbhu;)V

    move-object/from16 v3, v18

    .line 10
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzbgj;->loadUrl(Ljava/lang/String;)V

    return-object v2
.end method
