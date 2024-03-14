.class Lcom/adcolony/sdk/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/k0$b;
    }
.end annotation


# static fields
.field static final a:I = 0x80

.field static b:Ljava/util/concurrent/ExecutorService;

.field static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adcolony/sdk/k0;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/media/AudioManager;)D
    .registers 8

    const-wide/16 v0, 0x0

    if-nez p0, :cond_15

    .line 38
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v2, "getAudioVolume() called with a null AudioManager"

    .line 39
    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object v2, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 40
    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return-wide v0

    :cond_15
    const/4 v2, 0x3

    .line 45
    :try_start_16
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    int-to-double v3, v3

    .line 46
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_2d

    int-to-double v5, p0

    cmpl-double p0, v5, v0

    if-nez p0, :cond_25

    return-wide v0

    :cond_25
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    return-wide v3

    :catch_2d
    move-exception p0

    .line 54
    new-instance v2, Lcom/adcolony/sdk/u$a;

    invoke-direct {v2}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v3, "Exception occurred when accessing AudioManager: "

    .line 55
    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    .line 56
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object v2, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 57
    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return-wide v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/adcolony/sdk/k0;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/adcolony/sdk/k0;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static a(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .registers 5
    .param p0    # Landroid/content/SharedPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 2
    :try_start_1
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_6

    goto :goto_30

    .line 4
    :catch_6
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in SharedPreferences "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string p1, "does not have an int value."

    .line 6
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object p1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    .line 7
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    :goto_30
    return v0
.end method

.method static a(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x2

    .line 236
    new-array v1, v1, [I

    fill-array-data v1, :array_20

    .line 237
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 238
    aget p0, v1, v0

    int-to-float p0, p0

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->n()F

    move-result v0

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    nop

    :array_20
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static a(Lcom/adcolony/sdk/g0;)I
    .registers 8

    const-string v0, "AppVersion"

    const/4 v1, 0x0

    .line 208
    :try_start_3
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_7d

    .line 209
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 210
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 211
    iget-wide v2, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    .line 212
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adcolony/sdk/g0;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_37} :catch_7d

    const-string v4, "last_update"

    const/4 v5, 0x1

    if-eqz v2, :cond_5d

    .line 215
    :try_start_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-virtual {p0}, Lcom/adcolony/sdk/g0;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {v2}, Lcom/adcolony/sdk/s;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 219
    invoke-static {v2, v4}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_5b

    const/4 v1, 0x1

    goto :goto_5e

    :cond_5b
    const/4 v5, 0x0

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x2

    :goto_5e
    if-eqz v5, :cond_7d

    .line 233
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 234
    invoke-static {v2, v4, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adcolony/sdk/g0;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/adcolony/sdk/s;->i(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_7d} :catch_7d

    :catch_7d
    :cond_7d
    return v1
.end method

.method static a(Ljava/lang/String;)I
    .registers 5

    .line 9
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/zip/CRC32;->update(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 14
    :cond_16
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method static a(Landroid/content/Context;)Landroid/media/AudioManager;
    .registers 2

    if-nez p0, :cond_14

    .line 58
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v0, "getAudioManager called with a null Context"

    .line 59
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object v0, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 60
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    const/4 p0, 0x0

    return-object p0

    :cond_14
    const-string v0, "audio"

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method static a()Ljava/lang/String;
    .registers 1

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(DI)Ljava/lang/String;
    .registers 4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-static {p0, p1, p2, v0}, Lcom/adcolony/sdk/k0;->a(DILjava/lang/StringBuilder;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 149
    :goto_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_a6

    if-lez v1, :cond_1c

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_1c
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_a8

    goto/16 :goto_a2

    .line 173
    :pswitch_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SU"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a2

    .line 174
    :pswitch_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SA"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a2

    .line 175
    :pswitch_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FR"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a2

    .line 176
    :pswitch_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "TH"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a2

    .line 177
    :pswitch_6d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WE"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a2

    .line 178
    :pswitch_7f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "TU"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a2

    .line 179
    :pswitch_91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MO"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_a6
    return-object v0

    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_91
        :pswitch_7f
        :pswitch_6d
        :pswitch_5b
        :pswitch_49
        :pswitch_37
        :pswitch_25
    .end packed-switch
.end method

.method static a(I)Lorg/json/JSONArray;
    .registers 4

    .line 16
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, p0, :cond_11

    .line 18
    invoke-static {}, Lcom/adcolony/sdk/k0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONArray;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-object v0
.end method

.method static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    const-string v0, "permissions"

    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method static a(DILjava/lang/StringBuilder;)V
    .registers 11

    .line 67
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_63

    :cond_d
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_19

    neg-double p0, p0

    const/16 v0, 0x2d

    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_19
    if-nez p2, :cond_23

    .line 76
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_66

    :cond_23
    int-to-double v0, p2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 78
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    long-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v2

    .line 79
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    .line 80
    div-long v2, p0, v0

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    .line 81
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    rem-long/2addr p0, v0

    const-wide/16 v2, 0x0

    const/16 v4, 0x30

    cmp-long v5, p0, v2

    if-nez v5, :cond_51

    const/4 p0, 0x0

    :goto_49
    if-ge p0, p2, :cond_66

    .line 85
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_49

    :cond_51
    const-wide/16 v2, 0xa

    mul-long v5, p0, v2

    :goto_55
    cmp-long p2, v5, v0

    if-gez p2, :cond_5f

    .line 89
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-long v5, v5, v2

    goto :goto_55

    .line 91
    :cond_5f
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 92
    :cond_63
    :goto_63
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_66
    :goto_66
    return-void
.end method

.method static a(Landroid/content/Intent;)Z
    .registers 2

    const/4 v0, 0x0

    .line 205
    invoke-static {p0, v0}, Lcom/adcolony/sdk/k0;->a(Landroid/content/Intent;Z)Z

    move-result p0

    return p0
.end method

.method static a(Landroid/content/Intent;Z)Z
    .registers 6

    const/4 v0, 0x0

    .line 180
    :try_start_1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    .line 183
    :cond_8
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_11

    const/high16 v2, 0x10000000

    .line 184
    invoke-virtual {p0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    :cond_11
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/h;->d()Lcom/adcolony/sdk/AdColonyInterstitial;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 190
    invoke-virtual {v2}, Lcom/adcolony/sdk/AdColonyInterstitial;->g()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 191
    invoke-virtual {v2}, Lcom/adcolony/sdk/AdColonyInterstitial;->e()Lcom/adcolony/sdk/c0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/c0;->f()V

    :cond_28
    if-eqz p1, :cond_34

    const-string p1, "Handle this via..."

    .line 196
    invoke-static {p0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_37

    .line 198
    :cond_34
    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_39

    :goto_37
    const/4 p0, 0x1

    return p0

    :catch_39
    move-exception p0

    .line 202
    new-instance p1, Lcom/adcolony/sdk/u$a;

    invoke-direct {p1}, Lcom/adcolony/sdk/u$a;-><init>()V

    .line 203
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object p1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    .line 204
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v0
.end method

.method static a(Ljava/lang/Runnable;)Z
    .registers 3

    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 29
    :cond_8
    sget-object v1, Lcom/adcolony/sdk/k0;->c:Landroid/os/Handler;

    if-nez v1, :cond_13

    .line 30
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/adcolony/sdk/k0;->c:Landroid/os/Handler;

    .line 33
    :cond_13
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 35
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_22

    .line 37
    :cond_1d
    sget-object v0, Lcom/adcolony/sdk/k0;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_22
    const/4 p0, 0x1

    return p0
.end method

.method static a(Ljava/lang/String;I)Z
    .registers 4

    .line 206
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 207
    new-instance v1, Lcom/adcolony/sdk/k0$a;

    invoke-direct {v1, v0, p0, p1}, Lcom/adcolony/sdk/k0$a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method static a(Ljava/lang/String;Ljava/io/File;)Z
    .registers 7

    const-string v0, "Exception on closing MD5 input stream"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "SHA1"

    .line 93
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_9} :catch_84

    .line 103
    :try_start_9
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_73

    const/16 p1, 0x2000

    .line 111
    new-array p1, p1, [B

    .line 114
    :goto_12
    :try_start_12
    invoke-virtual {v3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1c

    .line 115
    invoke-virtual {v2, p1, v1, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_12

    .line 117
    :cond_1c
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 118
    new-instance v2, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v2, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p1, 0x10

    .line 119
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2c} :catch_57
    .catchall {:try_start_12 .. :try_end_2c} :catchall_55

    const-string v2, "%40s"

    .line 121
    :try_start_2e
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x20

    const/16 v2, 0x30

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_42} :catch_57
    .catchall {:try_start_2e .. :try_end_42} :catchall_55

    .line 128
    :try_start_42
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_54

    .line 130
    :catch_46
    new-instance p1, Lcom/adcolony/sdk/u$a;

    invoke-direct {p1}, Lcom/adcolony/sdk/u$a;-><init>()V

    .line 131
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object v0, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 132
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    :goto_54
    return p0

    :catchall_55
    move-exception p0

    goto :goto_60

    :catch_57
    move-exception p0

    .line 133
    :try_start_58
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Unable to process file for MD5"

    invoke-direct {p1, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_55

    .line 136
    :goto_60
    :try_start_60
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_72

    .line 138
    :catch_64
    new-instance p1, Lcom/adcolony/sdk/u$a;

    invoke-direct {p1}, Lcom/adcolony/sdk/u$a;-><init>()V

    .line 139
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object v0, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 140
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 142
    :goto_72
    throw p0

    .line 143
    :catch_73
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p1, "Exception while getting FileInputStream"

    .line 144
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object p1, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 145
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v1

    .line 146
    :catch_84
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p1, "Exception while getting Digest"

    .line 147
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object p1, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 148
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v1
.end method

.method static a([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 4

    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    .line 19
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_9

    goto :goto_14

    .line 22
    :cond_9
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 23
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 24
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method static b()D
    .registers 4

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static b(Landroid/view/View;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 v0, 0x2

    .line 32
    new-array v0, v0, [I

    fill-array-data v0, :array_20

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x1

    .line 34
    aget p0, v0, p0

    int-to-float p0, p0

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->n()F

    move-result v0

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :array_20
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    const-string v0, "androidx.preference.PreferenceManager"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_24

    .line 4
    :catch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    :goto_24
    return-object p0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-static {p0}, Lcom/adcolony/sdk/k0;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/adcolony/sdk/k0;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0    # Landroid/content/SharedPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 6
    :try_start_1
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_6

    goto :goto_30

    .line 8
    :catch_6
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in SharedPreferences "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string p1, "does not have a String value."

    .line 10
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object p1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    .line 11
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    :goto_30
    return-object v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 12
    :try_start_0
    invoke-static {p0}, Lcom/adcolony/sdk/n0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method static b(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 27
    :goto_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_32

    if-lez v1, :cond_1c

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_32
    return-object v0
.end method

.method static b(Landroid/media/AudioManager;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_14

    .line 14
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "isAudioEnabled() called with a null AudioManager"

    .line 15
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object v1, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 16
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v0

    :cond_14
    const/4 v1, 0x3

    .line 21
    :try_start_15
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_1d

    if-lez p0, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0

    :catch_1d
    move-exception p0

    .line 23
    new-instance v1, Lcom/adcolony/sdk/u$a;

    invoke-direct {v1}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v2, "Exception occurred when accessing AudioManager.getStreamVolume: "

    .line 24
    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v1

    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object v1, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 26
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v0
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const-string p0, "unknown"

    return-object p0
.end method

.method private static c(Ljava/lang/String;)V
    .registers 6

    .line 13
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 18
    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 23
    :try_start_b
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/h;->v()Lcom/adcolony/sdk/g0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/g0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x400

    .line 28
    new-array v1, v1, [B

    .line 30
    :goto_33
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3f

    const/4 v4, 0x0

    .line 31
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_33

    .line 33
    :cond_3f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 35
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 36
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_48} :catch_49

    goto :goto_6c

    :catch_49
    move-exception v0

    .line 39
    new-instance v1, Lcom/adcolony/sdk/u$a;

    invoke-direct {v1}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v2, "Failed copy hardcoded ad unit file named: "

    .line 40
    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string v1, " with error: "

    .line 41
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object v0, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 42
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    :goto_6c
    return-void
.end method

.method static c()Z
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->v()Lcom/adcolony/sdk/g0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adcolony/sdk/g0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->v()Lcom/adcolony/sdk/g0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adcolony/sdk/g0;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->k()Lcom/adcolony/sdk/p;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/adcolony/sdk/p;->a(Ljava/io/File;)Z

    move-result v2

    .line 7
    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->k()Lcom/adcolony/sdk/p;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/adcolony/sdk/p;->a(Ljava/io/File;)Z

    move-result v1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_51} :catch_57

    if-eqz v2, :cond_56

    if-eqz v1, :cond_56

    const/4 v0, 0x1

    :cond_56
    return v0

    .line 9
    :catch_57
    new-instance v1, Lcom/adcolony/sdk/u$a;

    invoke-direct {v1}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v2, "Unable to delete controller or launch response."

    .line 10
    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v1

    sget-object v2, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 11
    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v0
.end method

.method static d()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_9

    return-object v1

    .line 5
    :cond_9
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_11

    move-object v2, v0

    check-cast v2, Landroid/app/Application;

    goto :goto_18

    :cond_11
    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    .line 6
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 8
    :goto_18
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 10
    :try_start_1c
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 11
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_29} :catch_31

    if-nez v0, :cond_2c

    return-object v1

    .line 23
    :cond_2c
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24
    :catch_31
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v2, "Failed to retrieve application label."

    .line 25
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v2, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 26
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return-object v1
.end method

.method static d(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 4

    .line 52
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz p0, :cond_2c

    .line 55
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x1000

    .line 57
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 59
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_2c

    .line 60
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 61
    :goto_1d
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2c

    .line 62
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_29} :catch_2c

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :catch_2c
    :cond_2c
    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 5

    .line 27
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 31
    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 34
    :try_start_b
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 35
    array-length v1, v0

    if-nez v1, :cond_16

    .line 36
    invoke-static {p0}, Lcom/adcolony/sdk/k0;->c(Ljava/lang/String;)V

    goto :goto_78

    .line 38
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/h;->v()Lcom/adcolony/sdk/g0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/g0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 41
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_3f
    const/4 v1, 0x0

    .line 43
    :goto_40
    array-length v2, v0

    if-ge v1, v2, :cond_78

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adcolony/sdk/k0;->d(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_5c} :catch_5f

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :catch_5f
    move-exception p0

    .line 48
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "Failed copy hardcoded ad unit with error: "

    .line 49
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object v0, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 51
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    :cond_78
    :goto_78
    return-void
.end method

.method static e(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 21
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1d

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1d
    return v0
.end method

.method static e()Ljava/lang/String;
    .registers 4

    .line 10
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "1.0"

    if-nez v0, :cond_9

    return-object v1

    .line 15
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_19

    return-object v0

    .line 18
    :catch_19
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v2, "Failed to retrieve package info."

    .line 19
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v2, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 20
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return-object v1
.end method

.method static e(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 6
    :cond_8
    :try_start_8
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_f

    check-cast v0, Landroid/app/Application;

    goto :goto_15

    :cond_f
    check-cast v0, Landroid/app/Activity;

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 8
    :goto_15
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_1e

    const/4 p0, 0x1

    return p0

    :catch_1e
    return v1
.end method

.method static f()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 6
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_17

    return v0

    .line 9
    :catch_17
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v2, "Failed to retrieve package info."

    .line 10
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v2, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 11
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v1
.end method

.method static f(Ljava/lang/String;)I
    .registers 6

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const v4, 0x2b77bb9b

    if-eq v0, v4, :cond_1c

    const v4, 0x5545f2bb

    if-eq v0, v4, :cond_12

    goto :goto_26

    :cond_12
    const-string v0, "landscape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_1c
    const-string v0, "portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p0, -0x1

    :goto_27
    if-eqz p0, :cond_2e

    if-eq p0, v3, :cond_2d

    const/4 v1, -0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x1

    :cond_2e
    :goto_2e
    return v1
.end method

.method static g()Ljava/lang/String;
    .registers 2

    .line 7
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_18

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    const-string v0, "portrait"

    goto :goto_1a

    :cond_18
    const-string v0, "landscape"

    :goto_1a
    return-object v0
.end method

.method static g(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x80

    if-gt p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_c
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v0, "String must be non-null and the max length is 128 characters."

    .line 5
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 6
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    const/4 p0, 0x0

    return p0
.end method

.method static h(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x10

    .line 1
    :try_start_2
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_8

    long-to-int p0, v0

    return p0

    .line 3
    :catch_8
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "Unable to parse \'"

    .line 4
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string v0, "\' as a color."

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object v0, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    .line 5
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    const/high16 p0, -0x1000000

    return p0
.end method

.method static h()Z
    .registers 3

    .line 6
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1a

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1a

    check-cast v0, Landroid/app/Activity;

    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method static i(Ljava/lang/String;)Ljava/util/Date;
    .registers 6

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mmZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7
    :try_start_1b
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_20

    return-object p0

    .line 14
    :catch_20
    :try_start_20
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_24} :catch_25

    return-object p0

    .line 21
    :catch_25
    :try_start_25
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_29} :catch_2a

    return-object p0

    :catch_2a
    const/4 p0, 0x0

    return-object p0
.end method
