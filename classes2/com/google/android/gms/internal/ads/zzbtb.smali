.class final synthetic Lcom/google/android/gms/internal/ads/zzbtb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvu;


# instance fields
.field private final zzcyt:Landroid/content/Context;

.field private final zzfqm:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzfti:Lcom/google/android/gms/internal/ads/zzdok;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzdok;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzcyt:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzfqm:Lcom/google/android/gms/internal/ads/zzbbx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzfti:Lcom/google/android/gms/internal/ads/zzdok;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzcyt:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzfqm:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzfti:Lcom/google/android/gms/internal/ads/zzdok;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdnv;

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzazp;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzazp;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzdss:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzazp;->zzet(Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdw:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzazp;->zzeu(Ljava/lang/String;)V

    .line 5
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzazp;->zzae(Ljava/lang/String;)V

    .line 6
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzdok;->zzhfb:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzazp;->setAdUnitId(Ljava/lang/String;)V

    return-object v3
.end method
