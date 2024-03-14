.class public Lcom/applovin/impl/sdk/utils/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)I
    .registers 3

    :try_start_0
    invoke-virtual {p2, p0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 p0, -0x1

    :goto_6
    return p0
.end method
