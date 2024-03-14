.class public final Lcom/google/android/gms/internal/ads/zzbfg;
.super Lcom/google/android/gms/internal/ads/zzayl;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field final zzegh:Lcom/google/android/gms/internal/ads/zzbdu;

.field private final zzegt:Ljava/lang/String;

.field private final zzegu:[Ljava/lang/String;

.field final zzelk:Lcom/google/android/gms/internal/ads/zzbfl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdu;Lcom/google/android/gms/internal/ads/zzbfl;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayl;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfg;->zzegh:Lcom/google/android/gms/internal/ads/zzbdu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfg;->zzelk:Lcom/google/android/gms/internal/ads/zzbfl;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbfg;->zzegt:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbfg;->zzegu:[Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzln()Lcom/google/android/gms/internal/ads/zzbfi;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbfi;->zza(Lcom/google/android/gms/internal/ads/zzbfg;)V

    return-void
.end method


# virtual methods
.method public final zzvb()V
    .registers 4

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfg;->zzelk:Lcom/google/android/gms/internal/ads/zzbfl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfg;->zzegt:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfg;->zzegu:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbfl;->zze(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_14

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbfj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbfj;-><init>(Lcom/google/android/gms/internal/ads/zzbfg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_14
    move-exception v0

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbfj;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbfj;-><init>(Lcom/google/android/gms/internal/ads/zzbfg;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    .line 12
    throw v0
.end method
