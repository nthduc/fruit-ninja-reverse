.class final synthetic Lcom/google/android/gms/internal/ads/zzbgt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwe;


# instance fields
.field private final zzcyt:Landroid/content/Context;

.field private final zzdjk:Ljava/lang/String;

.field private final zzenr:Lcom/google/android/gms/internal/ads/zzbhy;

.field private final zzens:Z

.field private final zzent:Z

.field private final zzenu:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzenv:Lcom/google/android/gms/internal/ads/zzacb;

.field private final zzenw:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzenx:Lcom/google/android/gms/internal/ads/zzabs;

.field private final zzeny:Lcom/google/android/gms/ads/internal/zzk;

.field private final zzenz:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzeoa:Lcom/google/android/gms/internal/ads/zzts;

.field private final zzeob:Lcom/google/android/gms/internal/ads/zzsu;

.field private final zzeoc:Z

.field private final zzeod:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzeoe:Lcom/google/android/gms/internal/ads/zzdnw;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhy;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzacb;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)V
    .registers 19

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzcyt:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzenr:Lcom/google/android/gms/internal/ads/zzbhy;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzdjk:Ljava/lang/String;

    move v1, p4

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzens:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzent:Z

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzenu:Lcom/google/android/gms/internal/ads/zzeg;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzenv:Lcom/google/android/gms/internal/ads/zzacb;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzenw:Lcom/google/android/gms/internal/ads/zzbbx;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzenx:Lcom/google/android/gms/internal/ads/zzabs;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzeny:Lcom/google/android/gms/ads/internal/zzk;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzenz:Lcom/google/android/gms/ads/internal/zzb;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzeoa:Lcom/google/android/gms/internal/ads/zzts;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzeob:Lcom/google/android/gms/internal/ads/zzsu;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzeoc:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzeod:Lcom/google/android/gms/internal/ads/zzdnv;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzeoe:Lcom/google/android/gms/internal/ads/zzdnw;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzcyt:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzenr:Lcom/google/android/gms/internal/ads/zzbhy;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzdjk:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzens:Z

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzent:Z

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzenu:Lcom/google/android/gms/internal/ads/zzeg;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzenv:Lcom/google/android/gms/internal/ads/zzacb;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzenw:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzenx:Lcom/google/android/gms/internal/ads/zzabs;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzeny:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzenz:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzeoa:Lcom/google/android/gms/internal/ads/zzts;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzeob:Lcom/google/android/gms/internal/ads/zzsu;

    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzeoc:Z

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzeod:Lcom/google/android/gms/internal/ads/zzdnv;

    move-object/from16 v16, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzbgt;->zzeoe:Lcom/google/android/gms/internal/ads/zzdnw;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgu;

    move-object/from16 v17, v5

    move v5, v15

    move/from16 v18, v12

    move-object v12, v14

    move-object/from16 v19, v13

    move-object/from16 v13, v16

    move-object/from16 v20, v14

    move/from16 v14, v18

    move/from16 v21, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v19

    .line 3
    invoke-static/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzbgz;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhy;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzacb;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)Lcom/google/android/gms/internal/ads/zzbgz;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgu;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object v1

    move-object/from16 v3, v20

    move/from16 v2, v21

    .line 6
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzazd;->zza(Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzts;Z)Lcom/google/android/gms/internal/ads/zzbgi;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbgb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbgb;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v0
.end method
