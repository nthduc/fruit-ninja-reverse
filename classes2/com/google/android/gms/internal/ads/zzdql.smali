.class public final Lcom/google/android/gms/internal/ads/zzdql;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqj;


# instance fields
.field private final zzcn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdql;->zzcn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzdql;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdql;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdql;->zzcn:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdql;->zzcn:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdql;->zzcn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdql;->zzcn:Ljava/lang/String;

    return-object v0
.end method
