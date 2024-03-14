.class Lcom/vungle/warren/downloader/RangeResponse;
.super Ljava/lang/Object;
.source "RangeResponse.java"


# static fields
.field private static TAG:Ljava/lang/String; = "com.vungle.warren.downloader.RangeResponse"


# instance fields
.field public final dimension:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final rangeEnd:J

.field public final rangeStart:J

.field public final total:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 13

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_80

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 29
    array-length v0, p1

    const/4 v4, 0x2

    if-lt v0, v4, :cond_80

    .line 31
    array-length v0, p1

    const/4 v5, 0x0

    if-lez v0, :cond_20

    .line 32
    aget-object v3, p1, v5

    .line 35
    :cond_20
    array-length v0, p1

    const/4 v6, 0x1

    if-le v0, v6, :cond_80

    aget-object v0, p1, v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 36
    aget-object p1, p1, v6

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 39
    array-length v0, p1

    if-ne v0, v4, :cond_80

    .line 40
    aget-object v0, p1, v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 41
    aget-object v0, p1, v5

    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    array-length v7, v0

    if-ne v7, v4, :cond_6b

    aget-object v4, v0, v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6b

    aget-object v4, v0, v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 45
    :try_start_5a
    aget-object v4, v0, v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-wide v4, v1

    .line 50
    :goto_62
    :try_start_62
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-wide v7, v1

    goto :goto_6d

    :cond_6b
    move-wide v4, v1

    move-wide v7, v4

    .line 57
    :goto_6d
    aget-object v0, p1, v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 59
    :try_start_75
    aget-object p1, p1, v6

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_7b} :catch_7b

    :catch_7b
    :cond_7b
    move-object p1, v3

    move-wide v9, v1

    move-wide v1, v4

    move-wide v3, v9

    goto :goto_83

    :cond_80
    move-wide v7, v1

    move-object p1, v3

    move-wide v3, v7

    .line 67
    :goto_83
    iput-wide v1, p0, Lcom/vungle/warren/downloader/RangeResponse;->rangeStart:J

    .line 68
    iput-wide v7, p0, Lcom/vungle/warren/downloader/RangeResponse;->rangeEnd:J

    .line 69
    iput-wide v3, p0, Lcom/vungle/warren/downloader/RangeResponse;->total:J

    .line 70
    iput-object p1, p0, Lcom/vungle/warren/downloader/RangeResponse;->dimension:Ljava/lang/String;

    return-void
.end method
