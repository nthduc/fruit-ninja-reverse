.class final synthetic Lcom/google/android/gms/internal/ads/zzbih;
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

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzcyt:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzenr:Lcom/google/android/gms/internal/ads/zzbhy;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzdjk:Ljava/lang/String;

    move v1, p4

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzens:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzent:Z

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzenu:Lcom/google/android/gms/internal/ads/zzeg;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzenv:Lcom/google/android/gms/internal/ads/zzacb;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzenw:Lcom/google/android/gms/internal/ads/zzbbx;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzenx:Lcom/google/android/gms/internal/ads/zzabs;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzeny:Lcom/google/android/gms/ads/internal/zzk;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzenz:Lcom/google/android/gms/ads/internal/zzb;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzeoa:Lcom/google/android/gms/internal/ads/zzts;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzeob:Lcom/google/android/gms/internal/ads/zzsu;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzeoc:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzeod:Lcom/google/android/gms/internal/ads/zzdnv;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzeoe:Lcom/google/android/gms/internal/ads/zzdnw;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzcyt:Landroid/content/Context;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzenr:Lcom/google/android/gms/internal/ads/zzbhy;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzdjk:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzens:Z

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzent:Z

    move v8, v2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzenu:Lcom/google/android/gms/internal/ads/zzeg;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzenv:Lcom/google/android/gms/internal/ads/zzacb;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzenw:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzenx:Lcom/google/android/gms/internal/ads/zzabs;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzeny:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzenz:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzeoa:Lcom/google/android/gms/internal/ads/zzts;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzeob:Lcom/google/android/gms/internal/ads/zzsu;

    move-object/from16 v16, v3

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzeoc:Z

    move/from16 v17, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzeod:Lcom/google/android/gms/internal/ads/zzdnv;

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbih;->zzeoe:Lcom/google/android/gms/internal/ads/zzdnw;

    move-object/from16 v19, v3

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbib;

    move-object v4, v3

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbib;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhz;

    move-object/from16 v20, v3

    move-object v3, v0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhz;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbig;

    move v1, v2

    move-object v2, v0

    invoke-direct/range {v2 .. v19}, Lcom/google/android/gms/internal/ads/zzbig;-><init>(Lcom/google/android/gms/internal/ads/zzbhz;Lcom/google/android/gms/internal/ads/zzbib;Lcom/google/android/gms/internal/ads/zzbhy;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzacb;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)V

    .line 5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbgu;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbgu;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;)V

    .line 6
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbgb;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzbgb;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbig;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    move-object/from16 v0, v20

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Lcom/google/android/gms/internal/ads/zzbgj;Z)V

    return-object v2
.end method
