.class final synthetic Lcom/google/android/gms/internal/ads/zzcvr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfsc:Lcom/google/android/gms/internal/ads/zzdzc;

.field private final zzftx:Lcom/google/android/gms/internal/ads/zzdzc;

.field private final zzgpi:Lcom/google/android/gms/internal/ads/zzcvo;

.field private final zzgpn:Lcom/google/android/gms/internal/ads/zzdog;

.field private final zzgpo:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzgpp:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcvo;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lorg/json/JSONObject;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzgpi:Lcom/google/android/gms/internal/ads/zzcvo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzftx:Lcom/google/android/gms/internal/ads/zzdzc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzfsc:Lcom/google/android/gms/internal/ads/zzdzc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzgpn:Lcom/google/android/gms/internal/ads/zzdog;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzgpo:Lcom/google/android/gms/internal/ads/zzdnv;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzgpp:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzgpi:Lcom/google/android/gms/internal/ads/zzcvo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzftx:Lcom/google/android/gms/internal/ads/zzdzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzfsc:Lcom/google/android/gms/internal/ads/zzdzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzgpn:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzgpo:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzgpp:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcvo;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcdx;

    move-result-object v0

    return-object v0
.end method
