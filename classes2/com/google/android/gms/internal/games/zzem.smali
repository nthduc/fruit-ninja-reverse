.class public final Lcom/google/android/gms/internal/games/zzem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"


# direct methods
.method public static zzr(I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_27

    const/4 v0, 0x1

    if-eq p0, v0, :cond_24

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const-string p0, "ALL_TIME"

    return-object p0

    .line 5
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown time span "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    const-string p0, "WEEKLY"

    return-object p0

    :cond_27
    const-string p0, "DAILY"

    return-object p0
.end method
