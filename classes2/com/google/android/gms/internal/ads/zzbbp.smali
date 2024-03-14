.class final synthetic Lcom/google/android/gms/internal/ads/zzbbp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbr;


# instance fields
.field private final zzeek:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbp;->zzeek:[B

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/util/JsonWriter;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbp;->zzeek:[B

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbk;->zza([BLandroid/util/JsonWriter;)V

    return-void
.end method
