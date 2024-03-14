.class public final Lcom/google/android/gms/internal/ads/zzeap;
.super Lcom/google/android/gms/internal/ads/zzeae;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeab;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/ads/zzelj;",
        "PublicKeyProtoT::",
        "Lcom/google/android/gms/internal/ads/zzelj;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzeae<",
        "TPrimitiveT;TKeyProtoT;>;",
        "Lcom/google/android/gms/internal/ads/zzeab<",
        "TPrimitiveT;>;"
    }
.end annotation


# instance fields
.field private final zzhur:Lcom/google/android/gms/internal/ads/zzeas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeas<",
            "TKeyProtoT;TPublicKeyProtoT;>;"
        }
    .end annotation
.end field

.field private final zzhus:Lcom/google/android/gms/internal/ads/zzeag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeag<",
            "TPublicKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeas;Lcom/google/android/gms/internal/ads/zzeag;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeas<",
            "TKeyProtoT;TPublicKeyProtoT;>;",
            "Lcom/google/android/gms/internal/ads/zzeag<",
            "TPublicKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzeae;-><init>(Lcom/google/android/gms/internal/ads/zzeag;Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeap;->zzhur:Lcom/google/android/gms/internal/ads/zzeas;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeap;->zzhus:Lcom/google/android/gms/internal/ads/zzeag;

    return-void
.end method
