.class public final Lcom/google/android/gms/internal/ads/zzbqk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzbwk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfro:Lcom/google/android/gms/internal/ads/zzbqh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbqh;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqk;->zzfro:Lcom/google/android/gms/internal/ads/zzbqh;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqk;->zzfro:Lcom/google/android/gms/internal/ads/zzbqh;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqh;->zzaiv()Lcom/google/android/gms/internal/ads/zzbwk;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbwk;

    return-object v0
.end method
