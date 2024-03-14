.class final synthetic Lcom/google/android/gms/internal/ads/zzatr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvu;


# instance fields
.field private final zzdvr:Lcom/google/android/gms/internal/ads/zzato;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzato;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdvr:Lcom/google/android/gms/internal/ads/zzato;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdvr:Lcom/google/android/gms/internal/ads/zzato;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzato;->zzf(Lorg/json/JSONObject;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
