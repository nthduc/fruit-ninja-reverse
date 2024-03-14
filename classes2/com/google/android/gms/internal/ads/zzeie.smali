.class public abstract Lcom/google/android/gms/internal/ads/zzeie;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzeif<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzeie<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzelm;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeie;->zzbdv()Lcom/google/android/gms/internal/ads/zzeie;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzeif;)Lcom/google/android/gms/internal/ads/zzeie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/zzeja;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzeie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeja;",
            "Lcom/google/android/gms/internal/ads/zzejm;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public zza([BIILcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzeie;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/ads/zzejm;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    const/4 p2, 0x0

    .line 3
    :try_start_1
    invoke-static {p1, p2, p3, p2}, Lcom/google/android/gms/internal/ads/zzeja;->zzb([BIIZ)Lcom/google/android/gms/internal/ads/zzeja;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzeie;->zza(Lcom/google/android/gms/internal/ads/zzeja;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzeie;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzeja;->zzfy(I)V
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzekj; {:try_start_1 .. :try_end_b} :catch_4a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p1

    .line 10
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Reading "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " from a "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " threw an IOException (should never happen)."

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 12
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_4a
    move-exception p1

    .line 8
    throw p1
.end method

.method public abstract zzbdv()Lcom/google/android/gms/internal/ads/zzeie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzelm;
    .registers 3

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeie;->zzbgn()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeif;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeie;->zza(Lcom/google/android/gms/internal/ads/zzeif;)Lcom/google/android/gms/internal/ads/zzeie;

    move-result-object p1

    return-object p1

    .line 16
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
