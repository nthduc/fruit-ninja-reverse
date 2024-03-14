.class public Lcom/vungle/warren/persistence/ContentValuesUtil;
.super Ljava/lang/Object;
.source "ContentValuesUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 4

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return p1

    .line 13
    :cond_8
    :try_start_8
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_f} :catch_10

    return p0

    .line 15
    :catch_10
    instance-of v0, p0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    :cond_2b
    const/4 p1, 0x1

    :cond_2c
    return p1

    .line 21
    :cond_2d
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3a

    .line 22
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_3a

    const/4 p1, 0x1

    :cond_3a
    return p1
.end method
