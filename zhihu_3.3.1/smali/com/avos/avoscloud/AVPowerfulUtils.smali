.class public Lcom/avos/avoscloud/AVPowerfulUtils;
.super Ljava/lang/Object;
.source "AVPowerfulUtils.java"


# static fields
.field private static final ENDPOINT:Ljava/lang/String; = "endpoint"

.field private static final PARSE_CLASSNAME:Ljava/lang/String; = "dbClassName"

.field private static powerfulTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVPowerfulUtils;->powerfulTable:Ljava/util/Map;

    .line 15
    invoke-static {}, Lcom/avos/avoscloud/AVPowerfulUtils;->createTable()V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    const-string v1, "endpoint"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v1, "dbClassName"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v1, Lcom/avos/avoscloud/AVPowerfulUtils;->powerfulTable:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method private static createTable()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "users"

    const-string v2, "_User"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "_User"

    const-string v1, "users"

    const-string v2, "_User"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-class v0, Lcom/avos/avoscloud/AVRole;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "roles"

    const-string v2, "_Role"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "_Role"

    const-string v1, "roles"

    const-string v2, "_Role"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-class v0, Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "files"

    const-string v2, "_File"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "_File"

    const-string v1, "files"

    const-string v2, "_File"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    const-string v0, ""

    .line 43
    sget-object v1, Lcom/avos/avoscloud/AVPowerfulUtils;->powerfulTable:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    sget-object v0, Lcom/avos/avoscloud/AVPowerfulUtils;->powerfulTable:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    if-nez v0, :cond_0

    .line 46
    const-string v0, ""

    .line 49
    :cond_0
    return-object v0
.end method

.method private static getAVClassEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    const-string v0, "endpoint"

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const-string v0, "classes/%s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    const-string v0, "classes/%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAVClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 137
    const-string v0, "dbClassName"

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAVRoleEndpoint(Lcom/avos/avoscloud/AVRole;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 74
    const-class v0, Lcom/avos/avoscloud/AVRole;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "endpoint"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVPowerfulUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRole;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRole;->getObjectId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_0
    return-object v0
.end method

.method private static getAVUserEndpoint(Lcom/avos/avoscloud/AVUser;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 66
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "endpoint"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVPowerfulUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_0
    return-object v0
.end method

.method public static getBatchEndpoint(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getBatchEndpoint(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBatchEndpoint(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    const-string v0, "/%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEndpoint(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEndpoint(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 99
    instance-of v0, p0, Lcom/avos/avoscloud/AVUser;

    if-eqz v0, :cond_0

    .line 100
    check-cast p0, Lcom/avos/avoscloud/AVUser;

    .line 101
    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVUserEndpoint(Lcom/avos/avoscloud/AVUser;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 102
    :cond_0
    instance-of v0, p0, Lcom/avos/avoscloud/AVRole;

    if-eqz v0, :cond_1

    .line 103
    check-cast p0, Lcom/avos/avoscloud/AVRole;

    .line 104
    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVRoleEndpoint(Lcom/avos/avoscloud/AVRole;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_1
    instance-of v0, p0, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_3

    .line 106
    check-cast p0, Lcom/avos/avoscloud/AVObject;

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVClassEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVClassEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEndpoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 83
    const-string v0, "endpoint"

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    const-string v0, "classes/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_0
    return-object v0

    .line 88
    :cond_1
    new-instance v0, Lcom/avos/avoscloud/AVRuntimeException;

    const-string v1, "Blank class name"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getEndpointByAVClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFollowEndPoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 142
    const-string v0, "users/%s/friendship/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFolloweesEndPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 150
    const-string v0, "users/%s/followees"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFollowersAndFollowees(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 154
    const-string v0, "users/%s/followersAndFollowees"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFollowersEndPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 146
    const-string v0, "users/%s/followers"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalIdFromRequestBody(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 158
    const-string v0, "body"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "body"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 160
    const-string v1, "__internalId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
