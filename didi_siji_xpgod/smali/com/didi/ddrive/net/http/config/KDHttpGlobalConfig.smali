.class public final Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig;
.super Ljava/lang/Object;
.source "KDHttpGlobalConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig$KDDriveH5Config;,
        Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig$KDDriveHttpConfig;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static getDriveHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    sget v1, Lcom/didi/ddrive/util/GlobalSwitch;->SEVER_CONFIG:I

    packed-switch v1, :pswitch_data_0

    .line 63
    :pswitch_0
    const-string v0, "test.kuaidadi.com"

    .line 66
    .local v0, host:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 56
    .end local v0           #host:Ljava/lang/String;
    :pswitch_1
    const-string v0, "daijia.kuaidadi.com"

    .line 57
    .restart local v0       #host:Ljava/lang/String;
    goto :goto_0

    .line 59
    .end local v0           #host:Ljava/lang/String;
    :pswitch_2
    const-string v0, "test.kuaidadi.com"

    .line 60
    .restart local v0       #host:Ljava/lang/String;
    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getDriveHttpsPort()I
    .locals 2

    .prologue
    .line 88
    sget v1, Lcom/didi/ddrive/util/GlobalSwitch;->SEVER_CONFIG:I

    packed-switch v1, :pswitch_data_0

    .line 96
    const/16 v0, 0x232a

    .line 99
    .local v0, port:I
    :goto_0
    return v0

    .line 90
    .end local v0           #port:I
    :pswitch_0
    const/16 v0, 0x1bb

    .line 91
    .restart local v0       #port:I
    goto :goto_0

    .line 93
    .end local v0           #port:I
    :pswitch_1
    const/16 v0, 0x232a

    .line 94
    .restart local v0       #port:I
    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDrivePort()I
    .locals 2

    .prologue
    .line 71
    sget v1, Lcom/didi/ddrive/util/GlobalSwitch;->SEVER_CONFIG:I

    packed-switch v1, :pswitch_data_0

    .line 80
    :pswitch_0
    const/16 v0, 0x1fa2

    .line 83
    .local v0, port:I
    :goto_0
    return v0

    .line 73
    .end local v0           #port:I
    :pswitch_1
    const/16 v0, 0x50

    .line 74
    .restart local v0       #port:I
    goto :goto_0

    .line 76
    .end local v0           #port:I
    :pswitch_2
    const/16 v0, 0x2328

    .line 77
    .restart local v0       #port:I
    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getDriveTcpHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    sget v1, Lcom/didi/ddrive/util/GlobalSwitch;->SEVER_CONFIG:I

    packed-switch v1, :pswitch_data_0

    .line 113
    :pswitch_0
    const-string v0, "test.kuaidadi.com"

    .line 116
    .local v0, host:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 106
    .end local v0           #host:Ljava/lang/String;
    :pswitch_1
    const-string v0, "daijiatcp.kuaidadi.com"

    .line 107
    .restart local v0       #host:Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v0           #host:Ljava/lang/String;
    :pswitch_2
    const-string v0, "test.kuaidadi.com"

    .line 110
    .restart local v0       #host:Ljava/lang/String;
    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getDriveTcpPort()I
    .locals 2

    .prologue
    .line 121
    sget v1, Lcom/didi/ddrive/util/GlobalSwitch;->SEVER_CONFIG:I

    packed-switch v1, :pswitch_data_0

    .line 129
    :pswitch_0
    const/16 v0, 0x1fa3

    .line 132
    .local v0, port:I
    :goto_0
    return v0

    .line 123
    .end local v0           #port:I
    :pswitch_1
    const/16 v0, 0x144f

    .line 124
    .restart local v0       #port:I
    goto :goto_0

    .line 126
    .end local v0           #port:I
    :pswitch_2
    const/16 v0, 0x1fa1

    .line 127
    .restart local v0       #port:I
    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getH5HOST()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    sget v1, Lcom/didi/ddrive/util/GlobalSwitch;->SEVER_CONFIG:I

    packed-switch v1, :pswitch_data_0

    .line 142
    sget-object v0, Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig$KDDriveH5Config;->STABLE:Ljava/lang/String;

    .line 145
    .local v0, host:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 139
    .end local v0           #host:Ljava/lang/String;
    :pswitch_0
    sget-object v0, Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig$KDDriveH5Config;->ONLINE:Ljava/lang/String;

    .line 140
    .restart local v0       #host:Ljava/lang/String;
    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
