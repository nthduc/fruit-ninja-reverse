.class public Lcom/helpshift/util/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isToday(J)Z
    .registers 6

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    .line 12
    div-long/2addr p0, v2

    .line 13
    div-long/2addr v0, v2

    cmp-long v2, p0, v0

    if-nez v2, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method
