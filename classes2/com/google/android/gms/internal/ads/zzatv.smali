.class public final Lcom/google/android/gms/internal/ads/zzatv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatg;


# instance fields
.field private zzdvo:Lcom/google/android/gms/internal/ads/zzalt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzalt<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private zzdvt:Lcom/google/android/gms/internal/ads/zzalt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzalt<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzle()Lcom/google/android/gms/internal/ads/zzalw;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbx;->zzyv()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzalw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)Lcom/google/android/gms/internal/ads/zzamb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzama;->zzdio:Lcom/google/android/gms/internal/ads/zzalx;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzama;->zzdio:Lcom/google/android/gms/internal/ads/zzalx;

    const-string v3, "google.afma.request.getAdDictionary"

    .line 5
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzamb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaly;Lcom/google/android/gms/internal/ads/zzalv;)Lcom/google/android/gms/internal/ads/zzalt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdvt:Lcom/google/android/gms/internal/ads/zzalt;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzle()Lcom/google/android/gms/internal/ads/zzalw;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbx;->zzyv()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzalw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)Lcom/google/android/gms/internal/ads/zzamb;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzama;->zzdio:Lcom/google/android/gms/internal/ads/zzalx;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzama;->zzdio:Lcom/google/android/gms/internal/ads/zzalx;

    const-string v2, "google.afma.sdkConstants.getSdkConstants"

    .line 9
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzamb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaly;Lcom/google/android/gms/internal/ads/zzalv;)Lcom/google/android/gms/internal/ads/zzalt;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdvo:Lcom/google/android/gms/internal/ads/zzalt;

    return-void
.end method


# virtual methods
.method public final zzvg()Lcom/google/android/gms/internal/ads/zzalt;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzalt<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdvo:Lcom/google/android/gms/internal/ads/zzalt;

    return-object v0
.end method
