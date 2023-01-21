.class Lcom/mediatek/wfo/impl/WifiPdnHandler$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiPdnHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wfo/impl/WifiPdnHandler;->setupCallbacksForWifiStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 1622
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;

    .line 1628
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$500(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1630
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_0

    .line 1631
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty network capability:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1632
    return-void

    .line 1635
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "onAvailable"

    invoke-static {v1, v0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$600(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1636
    return-void

    .line 1639
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    .line 1640
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1653
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v5, "WIFI onAvailable."

    invoke-virtual {v1, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1655
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    sget-object v5, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DEFAULT_NETWORK_VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    .line 1657
    invoke-virtual {v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v5

    .line 1655
    invoke-virtual {v1, v4, v5, v3, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1659
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1661
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$702(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)Landroid/net/Network;

    .line 1662
    return-void

    .line 1641
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v5, "Without TRANSPORT_WIFI."

    invoke-virtual {v1, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1642
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$000(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1643
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v5, "TRANSPORT_WIFI lost."

    invoke-virtual {v1, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1644
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    sget-object v5, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DISCONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    .line 1646
    invoke-virtual {v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v5

    .line 1644
    invoke-virtual {v1, v4, v5, v3, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1648
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1650
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 1703
    if-nez p2, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v1, "NetworkCallback.onCapabilitiesChanged, Capabilities=null"

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1705
    return-void

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v1, "onCapabilitiesChanged"

    invoke-static {v0, p2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$600(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1709
    return-void

    .line 1712
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x10

    .line 1713
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1717
    :cond_2
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v1

    .line 1718
    .local v1, "rssi":I
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkCallback.onCapabilitiesChanged, rssi == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1720
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$000(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1721
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v3, 0x3e8

    sget-object v4, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DEFAULT_NETWORK_VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    .line 1723
    invoke-virtual {v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1721
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1725
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1728
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$702(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)Landroid/net/Network;

    .line 1730
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$800(Lcom/mediatek/wfo/impl/WifiPdnHandler;)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 1731
    return-void

    .line 1733
    :cond_4
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$802(Lcom/mediatek/wfo/impl/WifiPdnHandler;I)I

    .line 1734
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$902(Lcom/mediatek/wfo/impl/WifiPdnHandler;Z)Z

    .line 1735
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendEmptyMessage(I)Z

    .line 1736
    return-void

    .line 1714
    .end local v1    # "rssi":I
    :cond_5
    :goto_0
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 1744
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$500(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1746
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_0

    .line 1747
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLinkPropertiesChanged Empty network capability:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1748
    return-void

    .line 1751
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "onLinkPropertiesChanged"

    invoke-static {v1, v0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$600(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1752
    return-void

    .line 1755
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x10

    .line 1756
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1761
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLinkPropertiesChanged TRANSPORT_WIFI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$000(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1763
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$000(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1765
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v2, 0x3e8

    sget-object v3, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DEFAULT_NETWORK_VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    .line 1767
    invoke-virtual {v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1765
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1769
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1772
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$702(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)Landroid/net/Network;

    .line 1773
    return-void

    .line 1757
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "onLinkPropertiesChanged Without TRANSPORT_WIFI."

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1758
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;

    .line 1669
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$500(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1671
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_0

    .line 1672
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$700(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$700(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1673
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnLost with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$700(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1674
    return-void

    .line 1678
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "onLost"

    invoke-static {v1, v0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$600(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1679
    return-void

    .line 1682
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    .line 1683
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1689
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "WIFI onLost."

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1691
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v2, 0x3e8

    sget-object v3, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DISCONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    .line 1693
    invoke-virtual {v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    .line 1691
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1695
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1697
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$702(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)Landroid/net/Network;

    .line 1698
    return-void

    .line 1684
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "OnLost without TRANSPORT_WIFI."

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1685
    return-void
.end method
